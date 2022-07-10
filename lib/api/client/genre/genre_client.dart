import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:movie_log_app/api/client/dio.dart';
import 'package:movie_log_app/api/data/genre/genre.dart';
import '../../api_constants.dart';
import 'package:retrofit/http.dart';

part 'genre_client.g.dart';

final genreClientProvider = Provider<GenreClient>((ref) {
  final dio = ref.read(dioProvider);
  return GenreClient(dio);
});

@RestApi(baseUrl: "$BASE_URL/genre/movie/list")
abstract class GenreClient {
  factory GenreClient(Dio dio, {String baseUrl}) = _GenreClient;

  @GET("")
  Future<GenreResult> getGenre();
}