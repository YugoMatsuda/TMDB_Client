import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:movie_log_app/api/client/dio.dart';
import 'package:movie_log_app/api/data/movie_result/movie_result.dart';
import '../../api_constants.dart';
import 'package:retrofit/http.dart';
import '../../data/account/account.dart';

part 'account_client.g.dart';

final accountClientProvider = Provider<AccountClient>((ref) {
  final dio = ref.read(dioProvider);
  return AccountClient(dio);
});

@RestApi(baseUrl: "$BASE_URL/account")
abstract class AccountClient {
  factory AccountClient(Dio dio, {String baseUrl}) = _AccountClient;

  @GET("")
  Future<Account> getAccount(@Query("session_id") String sessionId);

  @GET("/{id}/favorite/movies")
  Future<MovieResult> getFavorites(@Path("id") int id, @Query("session_id") String sessionId);

  @POST("/{id}/favorite")
  Future<void> addFavorite(@Path("id") int id, @Query("session_id") String sessionId, @Body() Map<String, dynamic> params);
}