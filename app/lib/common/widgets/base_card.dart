import 'package:flutter/material.dart';
import 'package:my_app/app/theme.dart';
import 'package:my_app/util/color_util.dart';

enum ShadowSize {
  small,
  medium,
  large;
}

class BaseCard extends StatelessWidget {
  const BaseCard({
    required this.child,
    this.shadowSize = ShadowSize.large,
    this.decoration,
    super.key,
  });

  final Widget child;
  final ShadowSize shadowSize;
  final BoxDecoration? decoration;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8, right: 8),
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
      decoration: BoxDecoration(
        color: context.cardColor,
        borderRadius: kBorderRadius,
        border: kBorder,
        boxShadow: [
          if (shadowSize == ShadowSize.small) kShadowSmall,
          if (shadowSize == ShadowSize.medium) kShadowMedium,
          if (shadowSize == ShadowSize.large) kShadowLarge,
        ],
      ).copyWith(
        color: decoration?.color,
      ),
      child: child,
    );
  }
}

class InteractableCard extends StatefulWidget {
  const InteractableCard({
    required this.child,
    this.highlightColor,
    super.key,
    this.onTap,
    this.unselectedColor,
    this.hoverColor,
    this.selected = false,
    this.elevation = 8,
    this.distance,
    this.customPadding,
    this.backgroundColor,
  }) : assert(elevation >= 0, 'elevation must be positive');

  final Widget child;
  final void Function()? onTap;
  final Color? hoverColor;
  final Color? backgroundColor;
  final bool selected;
  final Color? highlightColor;
  final Color? unselectedColor;
  final double elevation;
  final double? distance;
  final EdgeInsets? customPadding;

  @override
  State<InteractableCard> createState() => _InteractableCardState();
}

class _InteractableCardState extends State<InteractableCard> {
  bool hovered = false;
  bool pressed = false;

  @override
  Widget build(BuildContext context) {
    final highlightColor = widget.highlightColor ?? context.primary;

    final cardColor = widget.backgroundColor ?? context.cardColor;
    final hoverColor = widget.hoverColor ??
        Color.alphaBlend(
          highlightColor.withOpacity(0.4),
          cardColor,
        );
    final color = hovered || pressed && !widget.selected
        ? (widget.selected
            ? highlightColor.alphaBlend(
                hoverColor.withOpacity(0.2),
              )
            : hoverColor)
        : widget.selected
            ? highlightColor
            : cardColor;

    final distanceOnPressed =
        widget.distance?.clamp(0, widget.elevation).toDouble() ??
            widget.elevation / 2;

    final marginShadow =
        pressed ? widget.elevation - distanceOnPressed : widget.elevation;
    final marginArea = pressed ? distanceOnPressed : 0.0;
    return AnimatedContainer(
      margin: EdgeInsets.only(
        bottom: marginShadow,
        right: marginShadow,
        top: marginArea,
        left: marginArea,
      ),
      duration: kDurationQuick,
      decoration: BoxDecoration(
        color: color,
        borderRadius: kBorderRadius,
        border: kBorder,
        boxShadow: [
          BoxShadow(
            offset: Offset(widget.elevation, widget.elevation),
          ).pressed(pressed, distanceOnPressed)
        ],
      ),
      curve: Curves.easeInOut,
      child: InkWell(
        onTapDown: (_) {
          setState(() {
            pressed = true;
          });
        },
        onTapUp: (_) {
          setState(() {
            pressed = false;
          });
        },
        onTapCancel: () {
          setState(() {
            pressed = false;
          });
        },
        borderRadius: kBorderRadius,
        splashColor: hoverColor,
        onHover: (value) {
          setState(() {
            hovered = value;
          });
        },
        onTap: widget.onTap,
        child: Padding(
          padding: widget.customPadding ??
              const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
          child: widget.child,
        ),
      ),
    );
  }
}
