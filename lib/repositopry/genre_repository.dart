import 'dart:io';
import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:movie_log_app/api/data/genre/genre.dart';
import 'package:movie_log_app/datasourse/remote_datasource/genre_remote_datasoure.dart';

abstract class GenreRepository {
  Future<GenreResult> getGenre();
}

final genreRepositoryProvider = Provider<GenreRepository>((ref) {
  final remoteDataSource = ref.read(genreRemoteDataSourceProvider);
  return GenreRepositoryImpl(remoteDataSource);
});

class GenreRepositoryImpl implements GenreRepository {
  final GenreRemoteDataSource _genreRemoteDataSource;

  GenreRepositoryImpl(this._genreRemoteDataSource);

  @override
  Future<GenreResult> getGenre() async {
    try {
      final genre = await _genreRemoteDataSource.getGeneres();
      return genre;
    } on SocketException catch(e) {
      print(e);
      throw(e.message);
    } on DioError catch (e) {
      throw(e.response?.data['status_message']);
    } catch(e) {
      print(e);
      throw(e.toString());
    }
  }
}