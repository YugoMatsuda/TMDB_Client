import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:movie_log_app/datasourse/local_datasource/app_local_datasource.dart';
import 'package:movie_log_app/model/cache_movie/cache_movie_model.dart';
import 'package:sqflite/sqflite.dart';

final movieLocalDatasourceProvider = Provider<MovieLocalDatasource>((ref) {
  return MovieLocalDatasource();
});

class MovieLocalDatasource extends AppLocalDatasource {
  final String _tableName = 'movies';

  Future<List<CacheMovieModel>> getCachedMovies() async {
    final db = await database;
    final maps = await db.query(
      _tableName,
      orderBy: 'createdAt DESC',
        limit: 20
    );
    if (maps.isEmpty) return [];
    return maps.map((e) => CacheMovieModel.fromJson(e)).toList();
  }

  Future<void> save(CacheMovieModel model) async {
    final db = await database;
    await db.insert(
      _tableName,
      model.toJson(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }
}