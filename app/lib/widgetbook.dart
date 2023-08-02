// widgetbook.dart

import 'package:flutter/material.dart';
import 'package:my_app/app/theme.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

// Import the generated directories variable
import 'widgetbook.directories.g.dart';

void main() {
  runApp(const WidgetbookApp());
}

@widgetbook.App()
class WidgetbookApp extends StatelessWidget {
  const WidgetbookApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Widgetbook.material(
      directories: directories,
      addons: [
        // DeviceFrameAddon(
        //
        //   devices: [
        //     Devices.macOS.macBookPro,
        //     Devices.ios.iPhone13,
        //   ],
        //   initialDevice: Devices.macOS.macBookPro,
        // ),
        MaterialThemeAddon(
          themes: [
            WidgetbookTheme(
              name: 'Light',
              data: theme(false),
            ),
            WidgetbookTheme(
              name: 'Dark',
              data: theme(true),
            ),
          ],
        ),
      ],
    );
  }
}
