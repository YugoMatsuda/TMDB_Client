import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:movie_log_app/api/client/genre/genre_client.dart';
import 'package:movie_log_app/api/data/genre/genre.dart';

abstract class GenreRemoteDataSource {
  Future<GenreResult> getGeneres();
}

final genreRemoteDataSourceProvider = Provider<GenreRemoteDataSource>((ref) {
  final client = ref.read(genreClientProvider);
  return GenreRemoteDataSourceImpl(client);
});

class GenreRemoteDataSourceImpl implements GenreRemoteDataSource {
  final GenreClient _client;

  GenreRemoteDataSourceImpl(this._client);

  @override
  Future<GenreResult> getGeneres() async {
    final response = await _client.getGenre();
    print(response);
    return response;
  }
}