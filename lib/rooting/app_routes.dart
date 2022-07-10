import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:movie_log_app/api/data/genre/genre.dart';
import 'package:movie_log_app/screen/favorites_screen.dart';
import 'package:movie_log_app/screen/home_screen.dart';
import 'package:movie_log_app/screen/movie_by_genre_screen.dart';
import 'package:movie_log_app/screen/movie_detail_screen.dart';
import 'package:movie_log_app/screen/webview_screen.dart';

import '../api/data/movie/movie.dart';

class AppRoutes {
  static const home = '/';
  static const favorites = '/favorites';
  static const movieDetail = '/movieDetail';
  static const webView = '/webView';
  static const genre = '/genre';

}

final routerProvider = Provider((ref) => GoRouter(
      initialLocation: '/',
      routes: [
        GoRoute(
          name: 'home',
          path: AppRoutes.home,
          pageBuilder: (context, state) => MaterialPage(
            key: state.pageKey,
            child: const HomeScreen(),
          ),
        ),
        GoRoute(
          name: 'favorites',
          path: AppRoutes.favorites,
          pageBuilder: (context, state) => MaterialPage(
            key: state.pageKey,
            child: const FavoritesScreen(),
          ),
        ),
        GoRoute(
          name: 'movieDetail',
          path: AppRoutes.movieDetail,
          pageBuilder: (context, state) => MaterialPage(
            key: state.pageKey,
            child: MovieDetailScreen(movie: state.extra! as Movie),
          ),
        ),
        GoRoute(
          name: 'webView',
          path: AppRoutes.webView,
          pageBuilder: (context, state) => MaterialPage(
            key: state.pageKey,
            child: WebViewScreen(url: state.extra! as String),
            fullscreenDialog: true
          ),
        ),
        GoRoute(
          name: 'genre',
          path: AppRoutes.genre,
          pageBuilder: (context, state) => MaterialPage(
              key: state.pageKey,
              child: MovieByGenreScreen(state.extra! as Genre),
          ),
        )
      ],
      errorPageBuilder: (context, state) => MaterialPage(
        key: state.pageKey,
        child: Scaffold(
          body: Center(
            child: Text(state.error.toString()),
          ),
        ),
      ),
    )
);
