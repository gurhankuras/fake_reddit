import 'package:reddit_clone/infastructure/chat/chat_message_dto.dart';

abstract class IChatCache {
  void saveAll(List<ChatMessageDTO> messages);
  Future<List<ChatMessageDTO>> getMessagesPaginated(int limit, int page);
  Future<ChatMessageDTO> getLastMessage();
}
