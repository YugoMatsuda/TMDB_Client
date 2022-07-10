class AddFavoriteBody {
  final int mediaId;
  final bool favorite;

  AddFavoriteBody({
    required this.mediaId,
    required this.favorite,
  });

  Map<String, dynamic> toJson() => {
    'media_type': 'movie',
    'media_id': mediaId,
    'favorite': favorite,
  };
}