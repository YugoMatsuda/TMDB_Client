import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:movie_log_app/api/data/movie_result/movie_result.dart';
import 'package:movie_log_app/api/request_body/add_favorite_body.dart';
import 'package:movie_log_app/providers/authentication_state_provider.dart';
import '../api/data/movie/movie.dart';
import '../repositopry/account_repository.dart';

final favoritesStateProvider = StateNotifierProvider.autoDispose<
    FavoritesStateNotifier, AsyncValue<MovieResult>>((ref) {
  final AccountRepository accountRepository =
      ref.watch(accountRepositoryProvider);
  final account = ref.read(authenticationStateProvider);
  return FavoritesStateNotifier(accountRepository, account?.id);
});

class FavoritesStateNotifier extends StateNotifier<AsyncValue<MovieResult>> {
  final AccountRepository _accountRepository;
  final int? _accountId;

  FavoritesStateNotifier(this._accountRepository, this._accountId) : super(const AsyncValue.loading()) {
    getFavorites();
  }

  Future<void> getFavorites() async {
    state = const AsyncValue.loading();
    if (_accountId == null) {
      state = const AsyncValue.error('accountId is null');
      return;
    }
    state = await AsyncValue.guard(() => _accountRepository.getFavorites(_accountId!));
  }
  
  bool isFavoriteMovie({required int movieId}) {
    return state.value?.results.where((element) => element.id == movieId).isNotEmpty ?? false;
  }

  Future<void> addFavorite({required Movie movie, required AddFavoriteBody requestBody}) async {
    if (_accountId == null) {
      state = const AsyncValue.error('accountId is null');
      return;
    }
    await _accountRepository.addFavorite(accountId: _accountId!, requestBody: requestBody.toJson());
    if(requestBody.favorite) {
      final storedMovies = state.value!.results;
      var newList = {...storedMovies, movie}.toList();
      state = AsyncValue.data(state.value!.copyWith(results: newList));
    } else {
      final newList = state.value!.results.where((storedMovie) => storedMovie.id != movie.id).toList();
      state = AsyncValue.data(state.value!.copyWith(results: newList));
    }
  }
}
