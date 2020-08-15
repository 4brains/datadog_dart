import 'dart:convert';

import 'package:http_interceptor/http_interceptor.dart';

class DataDogInterceptor implements InterceptorContract {
  final String apiKey;
  final Encoding encoding;

  DataDogInterceptor(this.apiKey, this.encoding);

  @override
  Future<RequestData> interceptRequest({RequestData data}) async {
    try {
      data.headers['Content-Type'] = 'application/json';
      data.headers['DD-API-KEY'] = apiKey;
      data.encoding = encoding;
    } catch (e) {
      print(e);
    }
    return data;
  }

  @override
  Future<ResponseData> interceptResponse({ResponseData data}) async => data;
}
