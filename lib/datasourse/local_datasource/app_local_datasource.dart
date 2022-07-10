import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class AppLocalDatasource {
  late Database _database;

  Future<Database> get database async {
    _database = await _initDB();
    return _database;
  }

  Future<Database> _initDB() async {
    String path = join(await getDatabasesPath(), 'movie.db');

    return await openDatabase(
      path,
      version: 1,
      onCreate: _createTable,
    );
  }

  Future<void> _createTable(Database db, int version) async {
    await db.execute('''
      CREATE TABLE searchKeywords(
        keyword TEXT PRIMARY KEY,
        createdAt INTEGER NOT NULL
      )
    ''');

    await db.execute('''
      CREATE TABLE movies(
        id INTEGER PRIMARY KEY,
        title TEXT NOT NULL,
        originalTitle TEXT,
        voteCount INTEGER,
        voteAverage REAL,
        releaseDate TEXT,
        originalLanguage TEXT,
        backdropPath TEXT,
        posterPath TEXT,
        overview TEXT,
        popularity REAL,
        mediaType TEXT,
        createdAt INTEGER NOT NULL
      )
    ''');
  }
}