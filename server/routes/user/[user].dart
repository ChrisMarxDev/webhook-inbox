import 'dart:convert';

import 'package:dart_frog/dart_frog.dart';
import 'package:uuid/uuid.dart';

import '../../services/user_dynamo_service.dart';

Future<Response> onRequest(RequestContext context, String user) async {
  // TODO fetch user from endpoint
  switch (context.request.method) {
    case HttpMethod.get:
      return _handleGet(context, user);
    case HttpMethod.post:
      return _handlePost(context, user);
    case HttpMethod.put:
    case HttpMethod.patch:
    case HttpMethod.delete:
    case HttpMethod.head:
    case HttpMethod.options:
  }
  return Response(
    statusCode: 400,
    body: 'Unknow request, only GET and POST are allowed',
  );
}

Future<Response> _handlePost(
  RequestContext context,
  String userId,
) async {
  final newEndpoint = const Uuid().v4();
  final result =
      await UserDynamoRepository().createEndpoint(userId, newEndpoint);

  return Response(body: jsonEncode(result));
}

Future<Response> _handleGet(
  RequestContext context,
  String userId,
) async {
  final result = await UserDynamoRepository().getEndpointsForUser(userId);

  return Response(body: jsonEncode(result));
}
