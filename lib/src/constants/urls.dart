import 'package:datadog_dart/src/datadog_dart.dart';

final Map<Region, String> apiBaseUrl = {
  Region.EU: 'https://api.datadoghq.eu',
  Region.US: 'https://api.datadoghq.com',
};

const String validateAPIKeyUrl = '/api/v1/validate';
