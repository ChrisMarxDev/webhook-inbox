import 'package:flutter/material.dart';
import 'package:my_app/app/theme.dart';

class SelectionCard extends StatelessWidget {
  const SelectionCard({
    required this.child,
    super.key,
    this.title,
    this.selected = false,
    this.onTap,
  });

  final Widget child;
  final String? title;
  final bool selected;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        side: selected
            ? BorderSide(
                color: context.primary,
              )
            : const BorderSide(
                color: Colors.grey,
              ),
      ),
      child: InkWell(
        onTap: onTap,
        child: SizedBox(
          height: 128,
          width: 128,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                if (title != null)
                  Text(
                    title!,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                child,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
