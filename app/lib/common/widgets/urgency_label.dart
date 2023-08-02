import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class UrgencyLabel extends StatelessWidget {
  const UrgencyLabel({required this.urgency, super.key});

  final int urgency;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 18,
      width: 42,
      child: Stack(
        children: [
          ...List.generate(
            urgency,
            (index) => Positioned(
              right: index * 4.0,
              child: SvgPicture.asset(
                'assets/images/fire_urgency.svg',
                height: 18,
                width: 18,
                // color: selected ? kPink : kGrey,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
