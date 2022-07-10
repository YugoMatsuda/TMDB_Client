class CreateSessionBody {
  final String requestToken;

  CreateSessionBody({
    required this.requestToken,
  });

  Map<String, dynamic> toJson() => {
    'request_token': requestToken,
  };
}