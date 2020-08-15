import 'dart:convert';

import 'package:datadog_dart/src/constants/log_urls.dart';
import 'package:datadog_dart/src/datadog_dart.dart';
import 'package:datadog_dart/src/models/logs/log_request.dart';
import 'package:datadog_dart/src/models/uri_builder.dart';
import 'package:http/http.dart';

class LogRepository {
  final Client client;
  final Region region;

  LogRepository(this.client, this.region);

  Future<bool> sendLog(LogRequest logRequest) async {
    try {
      final uri = UriBuilder(logBaseUrl[region])
        ..path = logInputURL
        ..build()
        ..toString();
      final response =
          await client.post(uri, body: json.encode(logRequest.toJson()));
      if (response.statusCode == 200) {
        return true;
      } else {
        return false;
      }
    } catch (e) {
      print(e);
      return false;
    }
  }
}
