import 'package:dart_frog/dart_frog.dart';
import 'package:models/models.dart';
import 'package:mongo_dart/mongo_dart.dart';

Future<UserRequestData> createRequestData({
  required Request request,
  required String user,
  required String endpointId,
}) async {
  final overrideTitle = request.uri.queryParameters['title'];
  final overrideBody = request.uri.queryParameters['body'];
  final overrideUrgency =
      int.tryParse(request.uri.queryParameters['urgency'] ?? '0') ?? 0;

  return UserRequestData(
    userId: user,
    endpointId: endpointId,
    createdAt: DateTime.now(),
    id: ObjectId().toHexString(),
    headers: request.headers,
    jsonBodyRaw: await request.body(),
    overrideTitle: overrideTitle,
    overrideBody: overrideBody,
    overrideUrgency: overrideUrgency,
  );
}

Future<String?> getImageUrlForType(String? type) async {
  return null;
}
