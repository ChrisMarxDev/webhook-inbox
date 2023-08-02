import 'dart:convert';

import 'package:models/src/notification_entry.dart';

import '../transformers.dart';

// {
// "action": "opened",
// "issue": {
// "url": "https://api.github.com/repos/octocat/Hello-World/issues/1347",
// "number": 1347
// },
// "repository": {
// "id": 1296269,
// "full_name": "octocat/Hello-World",
// "owner": {
// "login": "octocat",
// "id": 1
// }
// },
// "sender": {
// "login": "octocat",
// "id": 1
// }
// }

class GithubTransformer extends EntryTransformer {
  @override
  Future<NotificationData> parse(UserRequestData request) async {
    final body = Uri.decodeFull(request.jsonBodyRaw!);

    // print('GithubTransformer $body');

    final payload = body.replaceFirst('payload=', '');
    final payloadJson = jsonDecode(payload) as Map<String, dynamic>;

    final action = payloadJson['action'] as String?;
    final url = payloadJson['url'] as String?;

    final subType = request.headers['x-github-event'] ?? '';
    final subTypeAdd = payloadJson['action'];

    return NotificationData(
      title: '$action',
      jsonBodyRaw: payload,
      subType: subType + (subTypeAdd != null ? ' $subTypeAdd' : ''),
      urls: [if (url != null) url],
    );
  }
}
