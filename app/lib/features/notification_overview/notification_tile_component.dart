import 'package:flutter/material.dart';
import 'package:models/models.dart';
import 'package:my_app/features/notification_overview/notification_overview.dart';
import 'package:my_app/util/util.dart';
import 'package:my_app/util/widget_extension.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(
  name: 'NotificationTileList',
  type: Card,
)
Widget baseNotificationTileList(BuildContext context) {
  final item = NotificationEntry(
    id: 'id',
    createdAt: !context.knobs.boolean(label: 'isToday')
        ? DateTime(
            2021,
            1,
            1,
          )
        : DateTime.now(),
    endpointId: 'endpointId',
    title: 'This is a title',
    imageUrl: 'imageUrl',
    subType: 'This is a subtitle',
    userId: '',
    headers: {
      'x-github-event': 'pull_request',
      'x-github-delivery': 'delivery',
    },
    jsonBodyRaw: '''
{
    "action": "opened",
    "number": 1,
   }''',
    internalUrgency: 3,
    type: 'default',
  );
  return Padding(
    padding: const EdgeInsets.all(8),
    child: SingleChildScrollView(
      child: Padding(
              padding: const EdgeInsets.only(bottom: 4),
              child: NotificationTile(
                item: item,
                onToggle: (bool selected) {},
                selected: context.knobs.boolean(label: 'Selected'),
              )) *
          context.knobs.double.slider(label: 'Count', initialValue: 3).toInt(),
    ),
  );
}
