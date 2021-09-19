import 'package:injectable/injectable.dart';

import '../../domain/chat/i_chat_cache.dart';
import '../../utility/app_logger.dart';
import 'chat_message_dto.dart';

@LazySingleton(as: IChatCache)
class ChatCache implements IChatCache {
  // late Future<Database> database;
  ChatCache() {
    _initDatabase();
  }

  void _initDatabase() async {
    log.i('CHAT CACHE - _initDatabase');

    // database = openDatabase(
    //   join(await getDatabasesPath(), 'mydb.db'),
    //   onCreate: (db, version) {
    //     return db.execute(
    //       'CREATE TABLE chatMessages(message_id TEXT PRIMARY KEY, room_id TEXT, text TEXT, created_at TEXT, user_id TEXT, username TEXT, user_avatar TEXT)',
    //     );
    //   },
    //   version: 1,
    // );
  }

  @override
  void saveMessages(List<ChatMessageDTO> messages) async {
    // log.i('CHAT CACHE - saveAll');
    // final db = await database;
    // final batch = db.batch();
    // messages.forEach((msg) {
    //   batch.insert(
    //     'chatMessages',
    //     msg.toMap(),
    //     conflictAlgorithm: ConflictAlgorithm.replace,
    //   );
    // });
    // batch.commit(noResult: true);
  }

  @override
  Future<List<ChatMessageDTO>> getMessagesPaginated(int limit, int page) async {
    // log.i('CHAT CACHE - getMessagesPaginated');

    // final db = await database;
    // final chatMessages = await db.query(
    //   'chatMessages',
    //   limit: limit,
    //   orderBy: 'created_at DESC',
    //   offset: (page - 1) * limit,
    // );
    // return chatMessages.map((msg) => ChatMessageDTO.fromMap(msg)).toList();
    return Future.value([]);
  }
}
