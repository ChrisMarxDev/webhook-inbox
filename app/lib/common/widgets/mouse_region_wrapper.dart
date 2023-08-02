
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_app/app/theme.dart';


final mouseRegionRelativeYProvider =
    StateProvider<double>(name: 'mouseRegionRelativeYProvider', (ref) => 0.5);

class MouseRegionWrapper extends ConsumerWidget {
  const MouseRegionWrapper({required this.child, this.useX = true, super.key});

  final Widget child;
  final bool useX;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final state = ref.watch(Provider);
    final size = useX
        ? MediaQuery.sizeOf(context).width
        : MediaQuery.sizeOf(context).height;
    return MouseRegion(
      child: child,
      onHover: (event) {
        final position = useX ? event.position.dx : event.position.dy;

        final relativeDy = position / size;
        ref
            .read(mouseRegionRelativeYProvider.notifier)
            .update((state) => relativeDy);
      },
    );
  }
}

class MouseRegionBackground extends ConsumerWidget {
  const MouseRegionBackground({required this.child, super.key});

  final Widget child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final value = ref.watch(mouseRegionRelativeYProvider);
    // final lerpValue = pow(value - 0.5, 2).toDouble() * 2;
    return Container(
      height: double.infinity,
      width: double.infinity,
      // color: lerpHsvColor(kTeal, kPink, lerpValue),
      color: context.primary,
      child: NanaBackground(
        child: child,
      ),
    );
  }
}

class NanaBackground extends StatelessWidget {
  const NanaBackground({
    required this.child,
    super.key,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Image.asset(
            'assets/images/nanner_background.png',
            opacity: const AlwaysStoppedAnimation(0.5),
            gaplessPlayback: true,
            scale: 3,
            repeat: ImageRepeat.repeat,
          ),
        ),
        child,
      ],
    );
  }
}
