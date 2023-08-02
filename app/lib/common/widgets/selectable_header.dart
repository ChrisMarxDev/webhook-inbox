import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:my_app/app/theme.dart';

class SelectableHeader<T> extends StatefulWidget {
  const SelectableHeader({
    required this.builder,
    required this.items,
    required this.selectedIndex,
    this.spacing = 12,
    super.key,
  });

  final List<T> items;
  final Widget Function(T item, int index, bool selected) builder;
  final double spacing;
  final int selectedIndex;

  @override
  State<SelectableHeader<T>> createState() => _SelectableHeaderState();
}

class _SelectableHeaderState<T> extends State<SelectableHeader<T>> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        for (final (int index, T item) in widget.items.indexed)
          Padding(
            padding: EdgeInsets.only(
              right: item != widget.items.last ? widget.spacing : 0,
            ),
            child: widget.builder(item, index, index == widget.selectedIndex),
          ),
      ],
    );
  }
}

class SelectableContainer extends StatelessWidget {
  const SelectableContainer({
    required this.child,
    required this.selected,
    super.key,
  });

  final Widget child;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: 330.ms,
      decoration: BoxDecoration(
        color: selected ? context.primary : context.primary.withOpacity(0.1),
        borderRadius: kBorderRadius,
      ),
      padding: const EdgeInsets.all(8),
      child: child,
    );
  }
}
