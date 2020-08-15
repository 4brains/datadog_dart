class UriBuilder {
  final String url;
  // TODO template path segment
  String _path;
  Map<String, dynamic> _queryParameters;

  UriBuilder(this.url);

  set queryParameters(Map<String, dynamic> value) {
    _queryParameters = value;
  }

  set path(String value) {
    _path = value;
  }

  Uri build() {
    final Uri parsedUri = Uri.parse(url);
    final Uri apiUri = Uri(
        host: parsedUri.host,
        scheme: parsedUri.scheme,
        port: parsedUri.port,
        path: _path,
        queryParameters: _queryParameters);
    return apiUri;
  }
}
