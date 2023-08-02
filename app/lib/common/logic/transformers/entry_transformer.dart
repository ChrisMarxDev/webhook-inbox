// import 'package:dart_frog/dart_frog.dart';
// import 'package:models/models.dart';
//
// import 'default_transformer.dart';
// import 'github_transformer.dart';
//
import 'package:models/models.dart';

import 'package:my_app/common/logic/transformers/transformers.dart';
import 'package:my_app/common/logic/transformers/type_parser/type_parser.dart';

import 'image_handler/image_handler.dart';
import 'implementations/atlassian_transformer.dart';
import 'implementations/gitlab_transformer.dart';

abstract class EntryTransformer {
  Future<NotificationData> parse(UserRequestData request);
}

Future<NotificationEntry> notificationDataPipeline(
  UserRequestData request,
) async {
  final type = parseType(request);

  final transformers = {
    'github': GithubTransformer(),
    'gitlab': GitlabTransformer(),
    'atlassian': AtlassianTransformer(),
    // 'shopify': ShopifyTransformer(),
    // 'jira' : JiraTransformer(),
    'default': DefaultTransformer(),
  };

  final transformer = transformers[type] ?? transformers['default']!;
  final parsed = await transformer.parse(request);
  final imageUrl = getImageUrlForType(type);

  return NotificationEntry(
    type: type,
    subType: parsed.subType,
    jsonBodyRaw: parsed.jsonBodyRaw ?? request.jsonBodyRaw,
    headers: request.headers,
    userId: request.userId,
    title: request.overrideTitle ?? parsed.title,
    createdAt: request.createdAt,
    urls: parsed.urls,
    id: request.id,
    endpointId: request.endpointId,
    imageUrl: imageUrl,
    internalUrgency: request.overrideUrgency ?? parsed.internalUrgency,
    textBody: request.overrideBody ?? parsed.textBody,
    extraData: parsed.extraData,
  );
}
