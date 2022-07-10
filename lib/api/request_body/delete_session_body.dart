class DeleteSessionBody {
  final String sessionId;

  DeleteSessionBody({
    required this.sessionId,
  });

  Map<String, dynamic> toJson() => {
    'session_id': sessionId,
  };
}