import 'package:path/path.dart';
import 'package:reddit_clone/domain/chat/i_chat_cache.dart';
import 'package:reddit_clone/infastructure/chat/chat_message_dto.dart';
import 'package:reddit_clone/utility/app_logger.dart';
import 'package:sqflite/sqflite.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IChatCache)
class ChatCache implements IChatCache {
  late Future<Database> database;
  ChatCache() {
    _initDatabase();
  }

  void _initDatabase() async {
    log.i('CHAT CACHE - _initDatabase');

    database = openDatabase(
      join(await getDatabasesPath(), 'mydb.db'),
      onCreate: (db, version) {
        return db.execute(
          'CREATE TABLE chatMessages(message_id TEXT PRIMARY KEY, room_id TEXT, text TEXT, created_at TEXT, user_id TEXT, username TEXT, user_avatar TEXT)',
        );
      },
      version: 1,
    );
  }

  @override
  void saveAll(List<ChatMessageDTO> messages) async {
    log.i('CHAT CACHE - saveAll');
    final db = await database;
    messages.forEach((msg) {
      db.insert(
        'chatMessages',
        msg.toMap(),
        conflictAlgorithm: ConflictAlgorithm.replace,
      );
    });
  }

  @override
  Future<List<ChatMessageDTO>> getMessagesPaginated(int limit, int page) async {
    log.i('CHAT CACHE - getMessagesPaginated');

    final db = await database;
    final chatMessages = await db.query(
      'chatMessages',
      limit: limit,
      orderBy: 'created_at DESC',
      offset: (page - 1) * limit,
    );
    return chatMessages.map((msg) => ChatMessageDTO.fromMap(msg)).toList();
  }

  @override
  Future<ChatMessageDTO> getLastMessage() async {
    log.i('CHAT CACHE - getLastMessage');

    final db = await database;
    final lastMessage = await db.query(
      'chatMessages',
      limit: 1,
      orderBy: 'created_at',
    );
    // TODO:
    return ChatMessageDTO.fromMap(lastMessage[0]);
  }
}
