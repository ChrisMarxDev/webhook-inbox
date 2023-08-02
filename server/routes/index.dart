import 'dart:convert';
import 'dart:io';

import 'package:dart_frog/dart_frog.dart';

Future<Response> onRequest(RequestContext context) async {
  print(jsonEncode(Platform.environment));

  return Response(body: 'Welcome to Dart');
}
