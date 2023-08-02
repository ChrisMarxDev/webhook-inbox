import 'dart:convert';

import 'package:aws_dynamodb_api/dynamodb-2012-08-10.dart';
import 'package:dart_frog/dart_frog.dart';
import 'package:models/models.dart';
import 'package:riverpod/riverpod.dart';

import '../../services/entries/entry_factory_service.dart';
import '../../services/request_dynamo_service.dart';
import '../../services/state/push_update_provider.dart';

Future<Response> onRequest(RequestContext context, String endpoint) async {
  // TODO fetch user from endpoint
  switch (context.request.method) {
    case HttpMethod.get:
      return _handleGet(context, endpoint);
    case HttpMethod.post:
      return _handlePost(context, endpoint, endpoint);
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
  String endpoint,
  String userId,
) async {
  final creationDate = DateTime.now();

  final entry = await createRequestData(
    request: context.request,
    user: userId,
    endpointId: endpoint,
  );

  await RequestDynamoRepository().writeEntry(entry);

  final container = context.read<ProviderContainer>();
  container.read(pushUpdateProvider(userId).notifier).state = creationDate;

  return Response(body: 'success');
}

Future<Response> _handleGet(RequestContext context, String user) async {
  final body = await context.request.body();

  Map<String, AttributeValue>? lastEvaluatedKey;
  final data = body.isEmpty ? null : jsonDecode(body) as Map<String, dynamic>;
  // {"createdAt":{"N":"1690288620495"},"endpointId":{"S":"5f42ccfc-0872-448a-bccd-bcca2adff40c"}}
  final createdAt = data?['createdAt']?['N'] as String?;
  final endpointId = data?['endpointId']?['S'] as String?;

  if (createdAt == null || endpointId == null) {
    lastEvaluatedKey = {
      'createdAt': AttributeValue(n: createdAt),
      'endpointId': AttributeValue(s: endpointId),
    };
  }
  final result = await RequestDynamoRepository().readLastEntries(
    user,
    50,
    lastEvaluatedKey,
  );

  final entryMap = result.$1;
  print('lastEvaluatedKey');
  print(jsonEncode(result.$2));

  final response = UserRequestDataResponse(
    entries: entryMap,
  );

  return Response(
    body: jsonEncode(response.toJson()),
  );
}
