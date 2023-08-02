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

class GitlabTransformer extends EntryTransformer {
  @override
  Future<NotificationData> parse(UserRequestData request) async {
    final body = jsonDecode(request.jsonBodyRaw!);

    final eventName = body['event_name'] as String?;
    final repoUrl = body['repository']['url'] as String?;
    return NotificationData(
      title: 'Gitlab',
      subType: eventName,
      urls: [if (repoUrl != null) repoUrl],
    );
  }
}
