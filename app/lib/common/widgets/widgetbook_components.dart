import 'package:flutter/material.dart';
import 'package:flutter_json_view/flutter_json_view.dart';
import 'package:my_app/app/theme.dart';
import 'package:my_app/common/widgets/widgets.dart';
import 'package:my_app/features/endpoint_management/endpoint_header.dart';
import 'package:my_app/util/widget_extension.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

import '../logger.dart';

@widgetbook.UseCase(
  name: 'Elevated',
  type: ButtonStyleButton,
)
Widget elevatedButton(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(8),
    child: ElevatedButton(
      onPressed: () {},
      child: Text(
        context.knobs.string(
          label: 'Button Label',
          initialValue: 'Save',
        ),
      ),
    ),
  );
}

@widgetbook.UseCase(
  name: 'Outlined',
  type: ButtonStyleButton,
)
Widget outlinedButton(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(8),
    child: OutlinedButton(
      onPressed: () {},
      child: Text(
        context.knobs.string(
          label: 'Button Label',
          initialValue: 'Save',
        ),
      ),
    ),
  );
}

@widgetbook.UseCase(
  name: 'Base',
  type: Card,
)
Widget baseCard(BuildContext context) {
  return const Padding(
    padding: EdgeInsets.all(8),
    child: BaseCard(
      child: Padding(
        padding: EdgeInsets.all(8),
        child: Text('Test'),
      ),
    ),
  );
}

@widgetbook.UseCase(
  name: 'Interactable',
  type: Card,
)
Widget interactableCard(BuildContext context) {
  return Padding(
        padding: const EdgeInsets.all(4),
        child: InteractableCard(
          elevation: context.knobs.double
              .slider(label: 'Elevation', initialValue: 8, min: 0, max: 32),
          distance: context.knobs.double
              .slider(label: 'Travel', initialValue: 4, min: 0, max: 34),
          onTap: () {
            logger.i('Card tapped');
          },
          highlightColor: kPink,
          selected: context.knobs.boolean(label: 'Selected'),
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: ConstrainedBox(
              constraints: const BoxConstraints(
                minWidth: 80,
                maxWidth: 200,
              ),
              child: Row(
                children: [
                  const Text('Test'),
                ],
              ),
            ),
          ),
        ),
      ) *
      3;
}

@widgetbook.UseCase(
  name: 'JsonView in Card',
  type: JsonView,
)
Widget jsonViewInCard(BuildContext context) {
  return const Padding(
    padding: EdgeInsets.all(8),
    child: BaseCard(
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
    ),
  );
}

@widgetbook.UseCase(
  name: 'HeaderWidget',
  type: HeaderWidget,
)
Widget headerWidget(BuildContext context) {
  return const Padding(
    padding: EdgeInsets.all(8),
    child: HeaderWidget(
      baseUrl: 'https://www.banana-push.com',
      selectedEndpoint: 'abc123',
    ),
  );
}
