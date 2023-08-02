// import 'package:dart_frog/src/_internal.dart';
//
// import 'package:models/src/notification_entry.dart';
//
// import 'entry_transformer.dart';
//
// // {
// // "action": "opened",
// // "issue": {
// // "url": "https://api.github.com/repos/octocat/Hello-World/issues/1347",
// // "number": 1347
// // },
// // "repository": {
// // "id": 1296269,
// // "full_name": "octocat/Hello-World",
// // "owner": {
// // "login": "octocat",
// // "id": 1
// // }
// // },
// // "sender": {
// // "login": "octocat",
// // "id": 1
// // }
// // }

import 'package:models/models.dart';

import 'entry_transformer.dart';

class DefaultTransformer extends EntryTransformer {
  @override
  Future<NotificationData> parse(UserRequestData request) async {
    return NotificationData(
      title: 'Webhook',
      jsonBodyRaw: request.jsonBodyRaw,
      headers: request.headers,
    );
  }
}
