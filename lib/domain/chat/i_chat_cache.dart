import '../../infastructure/chat/chat_message_dto.dart';

abstract class IChatCache {
  void saveMessages(List<ChatMessageDTO> messages);
  Future<List<ChatMessageDTO>> getMessagesPaginated(int limit, int page);
}
