import 'package:flutter/material.dart';
import 'package:json_view/json_view.dart';
import 'package:my_app/app/theme.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

// class RequestContentWidget extends StatelessWidget{
//   const RequestContentWidget({
//     required this.entry,
//     super.key,
//   });
//
//   final NotificationEntry entry;
//   @override
//   Widget build(BuildContext context) {
//     if (entry.headers == null) {
//       return const SizedBox();
//     }
//   }
//
// }

class JsonViewWidget extends StatelessWidget {
  const JsonViewWidget({
    required this.data,
    super.key,
  }) : assert(
          data is Map || data is List,
          'data must be Map or List',
        );

  final dynamic data;

  @override
  Widget build(BuildContext context) {
    return JsonView(
      json: data,
      padding: const EdgeInsets.only(top: 8),
      animationCurve: Curves.easeInOut,
      animation: true,
      colorScheme: JsonColorScheme(
        normalColor: context.textColor,
        boolColor: context.primary,
        numColor: context.primary,
        stringColor: context.primary,
        nullColor: context.primary,
        markColor: context.primary,
        nullBackground: context.secondary,
      ),
      styleScheme: JsonStyleScheme(
        depth: 3,
        openAtStart: true,
        keysStyle: context.bodyMedium,
      ),
    );
  }
}

@widgetbook.UseCase(
  name: 'Base',
  type: JsonView,
)
Widget jsonView(BuildContext context) {
  return const Padding(
    padding: EdgeInsets.all(8),
    child: JsonViewWidget(
      data: {
        'name': 'John Smith',
        'age': 34,
        'child': {
          'name': 'Alice Smith',
          'age': 4,
        },
        'pets': [
          'fido',
          'fluffy',
        ],
      },
    ),
  );
}
