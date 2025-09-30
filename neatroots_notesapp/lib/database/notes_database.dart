import 'package:sqflite/sqflite.dart' as sqflite;
import 'package:path/path.dart';
import 'package:sqflite/sqlite_api.dart';

class NotesDatabase {
  static final NotesDatabase instance = NotesDatabase._init();

  NotesDatabase._init();

  static sqflite.Database? _database;

  Future<sqflite.Database> get database async {
    if (_database != null) return _database!;

    _database = await _initDB('notes.db');
    return _database!;
  }

  Future<sqflite.Database> _initDB(String filePath) async {
    final dpPath = await sqflite.getDatabasesPath();
    final path = join(dpPath, filePath);

    return await sqflite.openDatabase(path, version: 1, onCreate: _createDB);
  }

  Future _createDB(sqflite.Database db, int version) async {
    await db.execute('''
      CREATE TABLE notes(
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        title TEXT NOT NULL,
        description TEXT NOT NULL,
        date TEXT NOT NULL,
        color TEXT NOT NULL DEFAULT 0,
      )
      ''');
  }
}
