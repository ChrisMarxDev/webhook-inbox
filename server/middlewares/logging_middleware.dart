import 'dart:convert';

import 'package:dart_frog/dart_frog.dart';

Handler requestLoggingMiddleware(Handler handler) {
  return (context) async {
    // Execute code before request is handled.

    final params = context.request.uri.queryParameters;
    final headers = context.request.headers;

    print('''
Request:
method: ${context.request.method.value}
url: ${context.request.uri}
path: ${context.request.uri.path}
headers: ${jsonEncode(headers)}
params: ${jsonEncode(params)}
body: ${await context.request.body()}

    ''');
    // Forward the request to the respective handler.
    final response = await handler(context);
    return response;
  };
}
