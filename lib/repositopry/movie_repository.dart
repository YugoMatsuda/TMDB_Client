import 'dart:io';
import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:movie_log_app/api/data/credits/credits.dart';
import 'package:movie_log_app/api/data/video/video.dart';
import 'package:movie_log_app/datasourse/local_datasource/movie_local_datasource.dart';
import 'package:movie_log_app/datasourse/local_datasource/search_keyword_local_datasource.dart';
import 'package:movie_log_app/model/cache_movie/cache_movie_model.dart';
import 'package:movie_log_app/model/search_keyword/search_keyword_model.dart';
import '../api/data/movie_result/movie_result.dart';
import '../datasourse/remote_datasource/movie_remote_datasource.dart';

abstract class MovieRepository {
  Future<MovieResult> getNowPlaying({required int page});
  Future<MovieResult> getTrending();
  Future<Credits> getCredits({required int movieId});
  Future<VideoResult> getVideos({required int movieId});
  Future<MovieResult> getMovieByGenre(
      {required int genreId, required int page});
  Future<MovieResult> getMovieByKeyword({required String keyword});
  Future<List<SearchKeywordModel>> getSearchKeyword();
  Future<void> saveSearchKeyword({required String keyword});
  Future<void> deleteSearchKeyword({required String keyword});
  Future<List<CacheMovieModel>> getCacheMovie();
  Future<void> saveCacheMovie({required CacheMovieModel cacheMovieModel});
}

final movieRepositoryProvider = Provider<MovieRepository>((ref) {
  final movieRemoteDataSource = ref.read(movieRemoteDataSourceProvider);
  final movieLocalDatasource = ref.read(movieLocalDatasourceProvider);
  final searchKeywordLocalDatasource = ref.read(searchKeywordLocalDatasourceProvider);
  return MovieRepositoryImpl(movieRemoteDataSource, movieLocalDatasource, searchKeywordLocalDatasource);
});

class MovieRepositoryImpl implements MovieRepository {
  final MovieRemoteDataSource _movieRemoteDataSource;
  final MovieLocalDatasource _movieLocalDatasource;

  // TODO: MovieRepositoryに検索用のデータソースは微妙なのでリファクタリング
  final SearchKeywordLocalDatasource _searchKeywordLocalDatasource;

  MovieRepositoryImpl(
      this._movieRemoteDataSource, this._movieLocalDatasource, this._searchKeywordLocalDatasource);

  @override
  Future<MovieResult> getTrending() async {
    try {
      final trending = await _movieRemoteDataSource.getTrending();
      return trending;
    } on SocketException catch (e) {
      print(e);
      throw (e.message);
    } on DioError catch (e) {
      throw (e.response?.data['status_message']);
    } catch (e) {
      print(e);
      throw (e.toString());
    }
  }

  @override
  Future<MovieResult> getNowPlaying({required int page}) async {
    try {
      final nowPlaying = await _movieRemoteDataSource.getNowPlaying(page: page);
      return nowPlaying;
    } on SocketException catch (e) {
      print(e);
      throw (e.message);
    } on DioError catch (e) {
      throw (e.response?.data['status_message']);
    } catch (e) {
      print(e);
      throw (e.toString());
    }
  }

  @override
  Future<Credits> getCredits({required int movieId}) async {
    try {
      final credits = await _movieRemoteDataSource.getCredits(movieId: movieId);
      return credits;
    } on SocketException catch (e) {
      print(e);
      throw (e.message);
    } on DioError catch (e) {
      throw (e.response?.data['status_message']);
    } catch (e) {
      print(e);
      throw (e.toString());
    }
  }

  @override
  Future<VideoResult> getVideos({required int movieId}) async {
    try {
      final videos = await _movieRemoteDataSource.getVideos(movieId: movieId);
      return videos;
    } on SocketException catch (e) {
      print(e);
      throw (e.message);
    } on DioError catch (e) {
      throw (e.response?.data['status_message']);
    } catch (e) {
      print(e);
      throw (e.toString());
    }
  }

  @override
  Future<MovieResult> getMovieByGenre(
      {required int genreId, required int page}) async {
    try {
      final movies = await _movieRemoteDataSource.getMovieByGenre(
          genreId: genreId, page: page);
      return movies;
    } on SocketException catch (e) {
      print(e);
      throw (e.message);
    } on DioError catch (e) {
      throw (e.response?.data['status_message']);
    } catch (e) {
      print(e);
      throw (e.toString());
    }
  }

  @override
  Future<MovieResult> getMovieByKeyword({required String keyword}) async {
    try {
      final movies =
          await _movieRemoteDataSource.getMovieByKeyword(keyword: keyword);
      return movies;
    } on SocketException catch (e) {
      print(e);
      throw (e.message);
    } on DioError catch (e) {
      throw (e.response?.data['status_message']);
    } catch (e) {
      print(e);
      throw (e.toString());
    }
  }

  @override
  Future<List<SearchKeywordModel>> getSearchKeyword() async {
    try {
      final keywords = await _searchKeywordLocalDatasource.getSearchKeywords();
      return keywords;
    } catch (e) {
      print(e);
      throw (e.toString());
    }
  }

  @override
  Future<void> saveSearchKeyword({required String keyword}) async {
    try {
      final model =
          SearchKeywordModel(keyword: keyword, createdAt: DateTime.now());
      await _searchKeywordLocalDatasource.save(model);
    } catch (e) {
      print(e);
      throw (e.toString());
    }
  }

  @override
  Future<void> deleteSearchKeyword({required String keyword}) async {
    try {
      await _searchKeywordLocalDatasource.delete(keyword);
    } catch (e) {
      print(e);
      throw (e.toString());
    }
  }

  @override
  Future<List<CacheMovieModel>> getCacheMovie() async {
    try {
      final cacheMovies = await _movieLocalDatasource.getCachedMovies();
      return cacheMovies;
    } catch (e) {
      print(e);
      throw (e.toString());
    }
  }

  @override
  Future<void> saveCacheMovie({required CacheMovieModel cacheMovieModel}) async {
    try {
      await _movieLocalDatasource.save(cacheMovieModel);
    } catch (e) {
      print(e);
      throw (e.toString());
    }
  }


}
