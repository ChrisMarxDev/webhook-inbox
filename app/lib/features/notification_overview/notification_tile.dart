import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:models/models.dart';
import 'package:my_app/app/theme.dart';
import 'package:my_app/common/common.dart';
import 'package:my_app/common/widgets/urgency_label.dart';
import 'package:my_app/features/notification_details/notification_details_content.dart';
import 'package:my_app/features/notification_overview/notification_overview.dart';
import 'package:my_app/util/util.dart';

class NotificationListTile extends ConsumerWidget {
  const NotificationListTile({
    required this.item,
    super.key,
  });

  final NotificationEntry item;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selected = item.id == ref.watch(selectedNotificationProvider)?.id;

    return Padding(
      padding: const EdgeInsets.only(bottom: 4.0),
      child: FirstTimeAnimateInWrapper(
        createdAt: item.createdAt,
        endpointId: item.endpointId,
        child: NotificationTile(
          selected: selected,
          item: item,
          onToggle: (selected) {
            if (selected) {
              ref.read(selectedNotificationProvider.notifier).state = null;
              return;
            } else {
              ref.read(selectedNotificationProvider.notifier).state = item;
            }
          },
        ),
      ),
    );
  }
}

class NotificationTile extends ConsumerWidget {
  const NotificationTile({
    required this.item,
    required this.onToggle,
    required this.selected,
    super.key,
  });

  final NotificationEntry item;
  final void Function(bool selected) onToggle;
  final bool selected;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final titleStyle = context.titleMedium;
    return SizedBox(
      height: 80,
      child: InteractableCard(
        highlightColor: context.secondary.alphaBlend(Colors.white.withOpacity(0.2)),
        selected: selected,
        onTap: () => onToggle(selected),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.network(item.imageUrl ?? ''),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    item.title.isEmpty ? item.type : item.title,
                    style: titleStyle,
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(item.subType ?? '', style: context.bodySmall),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  item.createdAt.dynamicFormattedDateTime,
                  style: context.bodySmall,
                ),
                UrgencyLabel(
                  urgency: item.internalUrgency,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

final newestElementDateProvider =
    StateNotifierProvider.family<StateController<DateTime?>, DateTime?, String>(
        (ref, userId) {
  print('Create newest element prov');
  final controller = StateController<DateTime?>(null);
  ref.listen(entriesFutureStateProvider(userId), (previous, next) {
    if (previous != null && previous is AsyncData && next is AsyncData) {
      final previousEntries = previous.value!;
      final nextEntries = next.value!;
      if (previousEntries.length <= nextEntries.length) {
        if (previousEntries.first.createdAt
            .isBefore(nextEntries.first.createdAt)) {
          controller.state = previousEntries.first.createdAt;
        }
      }
    }
  });
  return controller;
});

class FirstTimeAnimateInWrapper extends ConsumerStatefulWidget {
  const FirstTimeAnimateInWrapper({
    required this.child,
    required this.createdAt,
    required this.endpointId,
    super.key,
  });

  final DateTime createdAt;
  final String endpointId;
  final Widget child;

  @override
  ConsumerState<FirstTimeAnimateInWrapper> createState() =>
      _FirstTimeAnimateInWrapperState();
}

class _FirstTimeAnimateInWrapperState
    extends ConsumerState<FirstTimeAnimateInWrapper>
    with SingleTickerProviderStateMixin {
  late final AnimationController controller;
  late final CurvedAnimation animation;

  @override
  void initState() {
    super.initState();
    final newestEntry = ref.read(newestElementDateProvider(widget.endpointId));
    // ignore: avoid_bool_literals_in_conditional_expressions
    final isNewerEntry = newestEntry == null
        ? false
        : widget.createdAt.millisecondsSinceEpoch >
            newestEntry.millisecondsSinceEpoch;
    controller = AnimationController(
      duration: const Duration(milliseconds: 800),
      vsync: this,
      value: isNewerEntry ? 0 : 1,
    );

     animation = CurvedAnimation(
      parent: controller,
      curve: Curves.easeInOut,
      reverseCurve: Curves.easeInOut,
    );

    if (isNewerEntry) {
      controller.forward().then((value) {
        ref.read(newestElementDateProvider(widget.endpointId).notifier).state =
            widget.createdAt;
      });
    }
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // final state = ref.watch(Provider);
    return AnimatedBuilder(
      animation: animation,
      builder: (BuildContext context, Widget? child) {
        return Opacity(
          opacity: animation.value,
          child: Transform.translate(
            // offset: Offset(0, 0),
            offset: Offset(0, -100 * (1 - animation.value)),
            child: Align(heightFactor: animation.value, child: child),
          ),
        );
      },
      child: widget.child,
    );
  }
}
