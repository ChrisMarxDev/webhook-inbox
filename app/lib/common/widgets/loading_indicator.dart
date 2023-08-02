import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

class LoadingIndicator extends StatefulWidget {
  const LoadingIndicator({
    super.key,
    this.size = 64,
  });

  final double size;

  @override
  State<LoadingIndicator> createState() => _LoadingIndicatorState();
}

class _LoadingIndicatorState extends State<LoadingIndicator>
    with SingleTickerProviderStateMixin {
  late final AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1600),
    );
    _animationController.repeat();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animationController,
      builder: (context, child) {
        return Transform.rotate(
          angle: _animationController.value * 2 * 3.14,
          child: ConstrainedBox(
            constraints:
                BoxConstraints(minHeight: widget.size, minWidth: widget.size),
            child: SvgPicture.asset(
              'assets/images/nana_close_color.svg',
            ),
          ),
        );
      },
    );
  }
}

@widgetbook.UseCase(
  name: 'Base',
  type: LoadingIndicator,
)
Widget baseLoadingIndicator(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(8),
    child: LoadingIndicator(
      size: context.knobs.double.slider(label: 'Size', min: 20, max: 200),
    ),
  );
}
