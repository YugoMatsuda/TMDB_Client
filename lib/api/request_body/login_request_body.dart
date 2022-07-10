class LoginRequestBody {
  final String userName;
  final String password;
  final String requestToken;

  LoginRequestBody({
    required this.userName,
    required this.password,
    required this.requestToken,

  });

  Map<String, dynamic> toJson() => {
    'username': userName,
    'password': password,
    'request_token': requestToken,
  };
}