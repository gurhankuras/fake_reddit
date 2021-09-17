import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reddit_clone/injection.dart';

import '../../../application/chat/chat/chat_bloc.dart';
import '../../../infastructure/chat/chat_message_dto.dart';
import '../../../utility/log_init.dart';
import '../../core/constants/colors.dart';
import '../../core/reusable/app_header.dart';
import '../../core/size_config.dart';
import '../../post/add_comment.dart';
import 'typing_indicator.dart';

class ChatMessage {
  final String text;
  final String senderAvatar;
  final String sentAt;
  final String senderName;

  ChatMessage({
    required this.text,
    required this.senderAvatar,
    required this.sentAt,
    required this.senderName,
  });
}

class ChatPage extends StatefulWidget implements AutoRouteWrapper {
  final String roomId;
  const ChatPage({Key? key, required this.roomId}) : super(key: key);

  @override
  _ChatPageState createState() => _ChatPageState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
        create: (context) => getIt<ChatBloc>(param1: roomId)
          ..add(
            ChatEvent.messagesFetchingStarted(),
          ),
        child: this);
  }
}

class _ChatPageState extends State<ChatPage> {
  late final TextEditingController _messageTextController;
  late final ScrollController _scrollController;

  bool call = false;
  @override
  void initState() {
    logInit(ChatPage);

    super.initState();
    _messageTextController = TextEditingController();
    _scrollController = ScrollController();
    _scrollController.addListener(() {
      final maxExtent = _scrollController.position.maxScrollExtent;
      final currentOffset = _scrollController.offset;

      // print('$maxExtent $currentOffset');
      if (maxExtent == currentOffset) {
        context.read<ChatBloc>().add(ChatEvent.loadedMoreMessage());
        print('LISTENER');
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    _messageTextController.dispose();
    _scrollController.dispose();
  }

  // void _isTop() {
  //   // if (!_scrollController.hasClients) return false;
  //   final maxScroll = _scrollController.position.maxScrollExtent;
  //   final currentScroll = _scrollController.offset;

  //   if (!call) {
  //     print(currentScroll < (maxScroll * 0.45));
  //     return;
  //   } else if (currentScroll < (maxScroll * 0.45)) {
  //     call = true;
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppbar(),
      body: Column(
        children: [
          Expanded(
            child: BlocBuilder<ChatBloc, ChatState>(
              builder: (context, state) {
                return state.loading
                    ? Text('Loading...')
                    // SliveredCircularProgressIndicator()
                    : ChatMessages(
                        messages: state.messages,
                        controller: _scrollController,
                      );
              },
            ),
          ),

          // ),
          SizedBox(height: 5),
          _buildTypeIndicator(),
          BlocListener<ChatBloc, ChatState>(
            listenWhen: (previous, current) =>
                previous.messages.length < current.messages.length,
            listener: (context, state) {
              // WidgetsBinding.instance?.addPostFrameCallback((timeStamp) {
              //   _scrollController
              //       .animateTo(
              //     0,
              //     // _scrollController.position.maxScrollExtent,
              //     curve: Curves.easeIn,
              //     duration: Duration(milliseconds: 300),
              //   )
              //       .then((_) {
              //     // context.read<ChatBloc>().add(ChatEvent.toggleLoadMore(true));
              //   });
              // });
            },
            child: _buildMessageInput(),
          )
        ],
      ),
      // )
    );
  }

  Widget _buildTypeIndicator() => BlocBuilder<ChatBloc, ChatState>(
        buildWhen: (previous, current) =>
            previous.otherTyping != current.otherTyping,
        builder: (context, state) => TypingIndicator(
          showIndicator: state.otherTyping,
          text: '${state.user ? "Jeddi" : "Brilliant_Program232"} is typing...',
        ),
      );

  Widget _buildMessageInput() {
    return Row(
      children: [
        Expanded(
            child: AddComment(
          hintText: 'Message',
          textController: _messageTextController,
          onChanged: (value) =>
              context.read<ChatBloc>().add(ChatEvent.messageChanged(value)),
        )),
        ChatSendButton(
          messageTextController: _messageTextController,
          scrollController: _scrollController,
        )
      ],
    );
  }

  AppBar _buildAppbar() {
    return AppBar(
      centerTitle: true,
      title: AppHeaderText(
        'reddit_chat_feedback',
        fontSizeFactor: 0.85,
        fontWeightDelta: 0,
      ),
      actions: [
        GestureDetector(
            onTap: () {
              // TODO
            },
            child: Icon(Icons.settings_outlined))
      ],
    );
  }
}

class ChatSendButton extends StatelessWidget {
  final ScrollController scrollController;
  final TextEditingController messageTextController;
  const ChatSendButton({
    Key? key,
    required this.messageTextController,
    required this.scrollController,
  }) : super(key: key);

  void onMessageSent() {
    messageTextController.clear();
    // scrollController.position.maxScrollExtent doesn't update after item was added to list.
    // we need this workaround
    WidgetsBinding.instance?.addPostFrameCallback((_) {
      scrollController.animateTo(
        // scrollController.position.maxScrollExtent,
        0,
        curve: Curves.easeIn,
        duration: Duration(milliseconds: 200),
      );
    });
  }

  void onSendTap(ChatState state, BuildContext context) {
    if (state.message.isNotEmpty) {
      context.read<ChatBloc>().add(ChatEvent.messageSent());
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ChatBloc, ChatState>(
      listenWhen: (previous, current) =>
          previous.message.trim().isNotEmpty && current.message.trim().isEmpty,
      listener: (context, state) => onMessageSent(),
      buildWhen: (previous, current) =>
          previous.message.isEmpty != current.message.isEmpty,
      builder: (context, state) {
        return GestureDetector(
          onTap: () => onSendTap(state, context),
          child: Icon(
            Icons.send,
            color: state.message.isEmpty ? AppColors.lightBlack3 : Colors.blue,
          ),
        );
      },
    );
  }
}

class ChatMessages extends StatelessWidget {
  final ScrollController controller;
  final List<ChatMessageDTO> messages;
  const ChatMessages({
    Key? key,
    required this.controller,
    required this.messages,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
        // SliverPadding(
        //   padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
        //   sliver: SliverList(
        //     delegate: SliverChildBuilderDelegate(
        //       (context, index) {
        //         // print(index);
        //         // if (index == 4) {
        //         // context.read<ChatBloc>().add(ChatEvent.loadedMoreMessage());
        //         // }
        //         if (index == 0) {
        //           return ChatMessageBlock(messages[index], hasHead: true);
        //         }
        //         // final hasHead =
        //         //     messages[index].user.name != messages[index - 1].user.name ||
        //         //         DateTime.parse(messages[index].createdAt!)
        //         //                 .difference(
        //         //                     DateTime.parse(messages[index - 1].createdAt!))
        //         //                 .inMinutes >
        //         //             3;
        //         return ChatMessageBlock(messages[index], hasHead: true);
        //       },
        //       childCount: messages.length,
        //     ),
        //   ),
        // );

        Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
      child: Scrollbar(
        child: ListView.builder(
          reverse: true,
          controller: controller,
          itemBuilder: (context, index) {
            // print(index);
            // if (index == 4) {
            // context.read<ChatBloc>().add(ChatEvent.loadedMoreMessage());
            // }
            if (index == 0) {
              return ChatMessageBlock(messages[index], hasHead: true);
            }
            // final hasHead =
            //     messages[index].user.name != messages[index - 1].user.name ||
            //         DateTime.parse(messages[index].createdAt!)
            //                 .difference(
            //                     DateTime.parse(messages[index - 1].createdAt!))
            //                 .inMinutes >
            //             3;
            return ChatMessageBlock(messages[index], hasHead: true);
          },
          itemCount: messages.length,
        ),
      ),
    );
  }
}

class ChatMessageBlock extends StatelessWidget {
  final ChatMessageDTO message;
  final bool hasHead;
  const ChatMessageBlock(
    this.message, {
    Key? key,
    this.hasHead = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (hasHead) ChatMessageHead(message),
          ChatText(message.text),
        ],
      ),
    );
  }
}

class ChatText extends StatelessWidget {
  final String text;
  const ChatText(
    this.text, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: SizeConfig.screenWidthPercentage(1.5 + 3) + 32),
        Expanded(child: Text(text)),
      ],
    );
  }
}

class ChatMessageHead extends StatelessWidget {
  final ChatMessageDTO message;
  const ChatMessageHead(
    this.message, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleAvatar(
          maxRadius: 16,
          backgroundColor: Colors.transparent,
          backgroundImage: NetworkImage(message.user.avatar),
        ),
        SizedBox(width: SizeConfig.screenWidthPercentage(1.5)),
        Row(
          children: [
            AppHeaderText(
              message.user.name,
              fontSizeFactor: 0.7,
            ),
            SizedBox(width: SizeConfig.screenWidthPercentage(1.5)),
            // AppHeaderText(
            //   DateFormat('h:mm a').format(DateTime.parse(message.createdAt!)),
            //   fontSizeFactor: 0.6,
            //   color: AppColors.lightGrey,
            // ),
          ],
        )
      ],
    );
  }
}

class ChatUserInfo extends StatelessWidget {
  const ChatUserInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12),
      child: Column(
        children: [
          SizedBox(
            height: 80,
            width: 80,
            child: CircleAvatar(
              // borderRadius: BorderRadius.circular(50),
              backgroundImage: NetworkImage(
                  'https://pbs.twimg.com/profile_images/1333471260483801089/OtTAJXEZ.jpg'),
            ),
          ),
          SizedBox(height: SizeConfig.screenWidthPercentage(2)),
          AppHeaderText('reddit_chat_feedback'),
          SizedBox(height: SizeConfig.screenWidthPercentage(2)),
          AppHeaderText(
            'redditor for ${3} y • ${548} karma',
            color: AppColors.moreLightGrey,
            fontSizeFactor: 0.72,
            fontWeightDelta: 0,
          ),
          SizedBox(height: SizeConfig.screenWidthPercentage(2)),
          AppHeaderText(
            'Send me your feedback about chat. Send me funny stories. Send me your secrets',
            color: AppColors.moreLightGrey,
            fontSizeFactor: 0.65,
            fontWeightDelta: 0,
          ),
        ],
      ),
    );
  }
}
