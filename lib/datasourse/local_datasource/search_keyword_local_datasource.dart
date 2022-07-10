import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:movie_log_app/datasourse/local_datasource/app_local_datasource.dart';
import 'package:movie_log_app/model/search_keyword/search_keyword_model.dart';
import 'package:sqflite/sqflite.dart';

final searchKeywordLocalDatasourceProvider = Provider<SearchKeywordLocalDatasource>((ref) {
  return SearchKeywordLocalDatasource();
});

class SearchKeywordLocalDatasource extends AppLocalDatasource {
  final String _tableName = 'searchKeywords';

  Future<List<SearchKeywordModel>> getSearchKeywords() async {
    final db = await database;
    final maps = await db.query(
      _tableName,
      orderBy: 'createdAt DESC',
    );
    if (maps.isEmpty) return [];
    return maps.map((e) => SearchKeywordModel.fromJson(e)).toList();
  }

  Future<void> save(SearchKeywordModel model) async {
    final db = await database;
    await db.insert(
      _tableName,
      model.toJson(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future delete(String keyword) async {
    final db = await database;
    return await db.delete(
      _tableName,
      where: 'keyword = ?',
      whereArgs: [keyword],
    );
  }
}