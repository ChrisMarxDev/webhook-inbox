import 'package:flutter/cupertino.dart';

extension WidgetsExtension on Widget {
  Widget operator *(int times) => Column(
        children: List.generate(times >= 1 ? times : 1, (index) => this),
      );
}
