import 'package:flutter/cupertino.dart';
import 'package:my_app/app/theme.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(
  name: 'titleSmall',
  type: Text,
)
Widget titleSmalle(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(8),
    child: Text(
      context.knobs.string(
        label: 'Text',
        initialValue: 'titleSmall',
      ),
      style: context.titleSmall,
    ),
  );
}

@widgetbook.UseCase(
  name: 'titleMedium',
  type: Text,
)
Widget titleMedium(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(8),
    child: Text(
      context.knobs.string(
        label: 'Text',
        initialValue: 'titleMedium',
      ),
      style: context.titleMedium,
    ),
  );
}

@widgetbook.UseCase(
  name: 'titleLarge',
  type: Text,
)
Widget titleLarge(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(8),
    child: Text(
      context.knobs.string(
        label: 'Text',
        initialValue: 'titleLarge',
      ),
      style: context.titleLarge,
    ),
  );
}

@widgetbook.UseCase(
  name: 'headlineSmall',
  type: Text,
)
Widget headlineSmall(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(8),
    child: Text(
      context.knobs.string(
        label: 'Text',
        initialValue: 'headlineSmall',
      ),
      style: context.headlineSmall,
    ),
  );
}

@widgetbook.UseCase(
  name: 'headlineMedium',
  type: Text,
)
Widget headlineMedium(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(8),
    child: Text(
      context.knobs.string(
        label: 'Text',
        initialValue: 'headlineMedium',
      ),
      style: context.headlineMedium,
    ),
  );
}

@widgetbook.UseCase(
  name: 'headlineLarge',
  type: Text,
)
Widget headlineLarge(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(8),
    child: Text(
      context.knobs.string(
        label: 'Text',
        initialValue: 'headlineLarge',
      ),
      style: context.headlineLarge,
    ),
  );
}

@widgetbook.UseCase(
  name: 'bodySmall',
  type: Text,
)
Widget bodySmall(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(8),
    child: Text(
      context.knobs.string(
        label: 'Text',
        initialValue: 'bodySmall',
      ),
      style: context.bodySmall,
    ),
  );
}

@widgetbook.UseCase(
  name: 'bodyMedium',
  type: Text,
)
Widget bodyMedium(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(8),
    child: Text(
      context.knobs.string(
        label: 'Text',
        initialValue: 'bodyMedium',
      ),
      style: context.bodyMedium,
    ),
  );
}

@widgetbook.UseCase(
  name: 'bodyLarge',
  type: Text,
)
Widget bodyLarge(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(8),
    child: Text(
      context.knobs.string(
        label: 'Text',
        initialValue: 'bodyLarge',
      ),
      style: context.bodyLarge,
    ),
  );
}

@widgetbook.UseCase(
  name: 'captionSmall',
  type: Text,
)
Widget captionSmall(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(8),
    child: Text(
      context.knobs.string(
        label: 'Text',
        initialValue: 'captionSmall',
      ),
      style: context.captionSmall,
    ),
  );
}

@widgetbook.UseCase(
  name: 'captionMedium',
  type: Text,
)
Widget captionMedium(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(8),
    child: Text(
      context.knobs.string(
        label: 'Text',
        initialValue: 'captionMedium',
      ),
      style: context.captionMedium,
    ),
  );
}

@widgetbook.UseCase(
  name: 'captionLarge',
  type: Text,
)
Widget captionLarge(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(8),
    child: Text(
      context.knobs.string(
        label: 'Text',
        initialValue: 'captionLarge',
      ),
      style: context.captionLarge,
    ),
  );
}

@widgetbook.UseCase(
  name: 'all',
  type: Text,
)
Widget allTexts(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(8),
    child: Column(
      children: [
        Text(
          'captionSmall${context.knobs.string(
            label: 'Text',
            initialValue: 'Test',
          )}',
          style: context.captionSmall,
        ),
        Text(
          'captionMedium${context.knobs.string(
            label: 'Text',
            initialValue: 'Test',
          )}',
          style: context.captionMedium,
        ),
        Text(
          'captionLarge${context.knobs.string(
            label: 'Text',
            initialValue: 'Test',
          )}',
          style: context.captionLarge,
        ),
        Text(
          'bodySmall${context.knobs.string(
            label: 'Text',
            initialValue: 'Test',
          )}',
          style: context.bodySmall,
        ),
        Text(
          'bodyMedium${context.knobs.string(
            label: 'Text',
            initialValue: 'Test',
          )}',
          style: context.bodyMedium,
        ),
        Text(
          'bodyLarge${context.knobs.string(
            label: 'Text',
            initialValue: 'Test',
          )}',
          style: context.bodyLarge,
        ),
        Text(
          'headlineSmall${context.knobs.string(
            label: 'Text',
            initialValue: 'Test',
          )}',
          style: context.headlineSmall,
        ),
        Text(
          'headlineMedium${context.knobs.string(
            label: 'Text',
            initialValue: 'Test',
          )}',
          style: context.headlineMedium,
        ),
        Text(
          'headlineLarge${context.knobs.string(
            label: 'Text',
            initialValue: 'Test',
          )}',
          style: context.headlineLarge,
        ),
        Text(
          'titleSmall${context.knobs.string(
            label: 'Text',
            initialValue: 'Test',
          )}',
          style: context.titleSmall,
        ),
        Text(
          'titleMedium${context.knobs.string(
            label: 'Text',
            initialValue: 'Test',
          )}',
          style: context.titleMedium,
        ),
        Text(
          'titleLarge${context.knobs.string(
            label: 'Text',
            initialValue: 'Test',
          )}',
          style: context.titleLarge,
        ),
      ],
    ),
  );
}
