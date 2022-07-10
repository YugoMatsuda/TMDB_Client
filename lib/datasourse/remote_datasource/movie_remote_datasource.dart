import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:movie_log_app/api/client/movie/movie_client.dart';
import 'package:movie_log_app/api/data/video/video.dart';
import '../../api/data/credits/credits.dart';
import '../../api/data/movie_result/movie_result.dart';

abstract class MovieRemoteDataSource {
  Future<MovieResult> getNowPlaying({required int page});
  Future<MovieResult> getTrending();
  Future<Credits> getCredits({required int movieId});
  Future<VideoResult> getVideos({required int movieId});
  Future<MovieResult> getMovieByGenre({required int genreId, required int page});
  Future<MovieResult> getMovieByKeyword({required String keyword});
}

final movieRemoteDataSourceProvider = Provider<MovieRemoteDataSource>((ref) {
  final client = ref.read(movieClientProvider);
  return MovieRemoteDataSourceImpl(client);
});

class MovieRemoteDataSourceImpl implements MovieRemoteDataSource {
  final MovieClient _client;

  MovieRemoteDataSourceImpl(this._client);

  @override
  Future<MovieResult> getTrending() async {
    final response = await _client.getTrending();
    print(response);
    return response;
  }

  @override
  Future<MovieResult> getNowPlaying({required int page}) async {
    final response = await _client.getNowPlaying(page);
    print(response);
    return response;
  }

  @override
  Future<Credits> getCredits({required int movieId}) async {
    final response = await _client.getCredits(movieId);
    print(response);
    return response;
  }

  @override
  Future<VideoResult> getVideos({required int movieId}) async {
    final response = await _client.getVideos(movieId);
    print(response);
    return response;
  }

  @override
  Future<MovieResult> getMovieByGenre({required int genreId, required int page}) async {
    final response = await _client.getMovieByGenre(genreId, page);
    print(response);
    return response;
  }

  @override
  Future<MovieResult> getMovieByKeyword({required String keyword}) async {
    final response = await _client.getMovieByKeyword(keyword);
    print(response);
    return response;
  }
}