import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_lorem/flutter_lorem.dart';
import 'package:intl/intl.dart';
import 'package:reddit_clone/_presentation/chat/typing_indicator.dart';

import 'package:reddit_clone/_presentation/core/constants/colors.dart';
import 'package:reddit_clone/_presentation/core/constants/ui.dart';
import 'package:reddit_clone/_presentation/core/reusable/app_header.dart';
import 'package:reddit_clone/_presentation/core/size_config.dart';
import 'package:reddit_clone/_presentation/core/slivered_circular_progress_indicator.dart';
import 'package:reddit_clone/_presentation/post/add_comment.dart';
import 'package:reddit_clone/application/chat/chat/chat_bloc.dart';

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

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  late final TextEditingController _messageTextController;
  late final ScrollController _scrollController;
  @override
  void initState() {
    super.initState();
    _messageTextController = TextEditingController();
    _scrollController = ScrollController();
  }

  @override
  void dispose() {
    super.dispose();
    _messageTextController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppbar(),
      body: Column(
        children: [
          Expanded(
            child: Scrollbar(
              child: CustomScrollView(
                controller: _scrollController,
                physics: UIConstants.physics,
                slivers: [
                  SliverToBoxAdapter(
                    child: ChatUserInfo(),
                  ),
                  BlocBuilder<ChatBloc, ChatState>(
                    builder: (context, state) {
                      return state.loading
                          ? SliveredCircularProgressIndicator()
                          : ChatMessages(messages: state.messages);
                    },
                  )
                ],
              ),
            ),
          ),
          // SizedBox(height: 5),
          _buildTypeIndicator(),
          _buildMessageInput()
        ],
      ),
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
            onTap: () => context.read<ChatBloc>().add(ChatEvent.emit()),
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
    Future.delayed(Duration(milliseconds: 100), () {
      scrollController.animateTo(
        scrollController.position.maxScrollExtent,
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
  final List<ChatMessage> messages;
  const ChatMessages({
    Key? key,
    required this.messages,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
      sliver: SliverList(
        delegate: SliverChildBuilderDelegate(
          (context, index) {
            if (index == 0) {
              return ChatMessageBlock(messages[index], hasHead: true);
            }
            final hasHead = messages[index].senderName !=
                    messages[index - 1].senderName ||
                DateTime.parse(messages[index].sentAt)
                        .difference(DateTime.parse(messages[index - 1].sentAt))
                        .inMinutes >
                    3;
            return ChatMessageBlock(messages[index], hasHead: hasHead);
          },
          childCount: messages.length,
        ),
      ),
    );
  }
}

class ChatMessageBlock extends StatelessWidget {
  final ChatMessage message;
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
  final ChatMessage message;
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
          backgroundImage: NetworkImage(message.senderAvatar),
        ),
        SizedBox(width: SizeConfig.screenWidthPercentage(1.5)),
        Row(
          children: [
            AppHeaderText(
              message.senderName,
              fontSizeFactor: 0.7,
            ),
            SizedBox(width: SizeConfig.screenWidthPercentage(1.5)),
            AppHeaderText(
              DateFormat('h:mm a').format(DateTime.parse(message.sentAt)),
              fontSizeFactor: 0.6,
              color: AppColors.lightGrey,
            ),
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
