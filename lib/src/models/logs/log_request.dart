class LogRequest {
  final String ddsource;
  final String ddtags;
  final String hostname;
  final String message;

  LogRequest({this.ddsource, this.ddtags, this.hostname, this.message});

  Map<String, String> toJson() {
    return {
      'ddsource': ddsource,
      'ddtags': ddtags,
      'hostname': hostname,
      'message': message,
    };
  }
}
