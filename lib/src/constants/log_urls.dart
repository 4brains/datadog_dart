import 'package:datadog_dart/src/datadog_dart.dart';

final Map<Region, String> logBaseUrl = {
  Region.EU: 'https://http-intake.logs.datadoghq.eu',
  Region.US: 'https://http-intake.logs.datadoghq.com',
};

final String logInputURL = '/v1/input';
