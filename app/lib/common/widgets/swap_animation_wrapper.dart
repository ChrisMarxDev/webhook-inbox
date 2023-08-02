import 'package:flutter/widgets.dart';
import 'package:my_app/app/theme.dart';

class SwapAnimationWrapper extends StatefulWidget {
  const SwapAnimationWrapper({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  State<SwapAnimationWrapper> createState() => _SwapAnimationWrapperState();
}

class _SwapAnimationWrapperState extends State<SwapAnimationWrapper> {
  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: kDurationBase,
      child: widget.child,
      transitionBuilder: (child, animation) {
        final slideUp = widget.child.key == child.key;
        final curvedAnimation = CurvedAnimation(
          parent: animation,
          curve: Curves.easeInOut,
        );
        return FadeTransition(
          opacity: curvedAnimation,
          child: SlideTransition(
            position: Tween<Offset>(
              begin: Offset(0, slideUp ? -1 : 1),
              end: Offset.zero,
            ).animate(curvedAnimation),
            child: child,
          ),
        );
      },
    );
  }
}
