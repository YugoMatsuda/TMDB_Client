import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:movie_log_app/api/data/credits/credits.dart';
import 'package:movie_log_app/api/data/movie_result/movie_result.dart';
import 'package:movie_log_app/api/data/video/video.dart';
import '../../api_constants.dart';
import 'package:retrofit/http.dart';
import '../dio.dart';

part 'movie_client.g.dart';

final movieClientProvider = Provider<MovieClient>((ref) {
  final dio = ref.read(dioProvider);
  return MovieClient(dio);
});

@RestApi(baseUrl: "$BASE_URL")
abstract class MovieClient {
  factory MovieClient(Dio dio, {String baseUrl}) = _MovieClient;

  @GET("/movie/now_playing")
  Future<MovieResult> getNowPlaying(@Query("page") int page);

  @GET("/movie/{movie_id}/credits")
  Future<Credits> getCredits(@Path("movie_id") int movieId);

  @GET("/movie/{movie_id}/videos")
  Future<VideoResult> getVideos(@Path("movie_id") int movieId);

  @GET("/movie/{mediaType}/{timeWindow}")
  Future<MovieResult> getTrending({@Path("mediaType") String mediaType = "movie", @Path("timeWindow") String timeWindow = "day"});

  @GET("/discover/movie")
  Future<MovieResult> getMovieByGenre(@Query("with_genres") int genreId, @Query("page") int page);

  @GET("/search/movie")
  Future<MovieResult> getMovieByKeyword(@Query("query") String keyword);
}