import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:models/models.dart';
import 'package:my_app/common/common.dart';

import 'package:my_app/features/notification_overview/notification_overview.dart';

import '../../app/theme.dart';

class NotificationList extends ConsumerWidget {
  const NotificationList({
    required this.data,
    required this.endpoint,
    super.key,
  });

  final List<NotificationEntry> data;
  final String endpoint;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return RefreshIndicator(
      onRefresh: () async {
        await ref
            .read(entriesFutureStateProvider(endpoint).notifier)
            .updateData();
        ref.invalidate(entryUpdateStreamProvider(endpoint));
      },
      child: CustomScrollView(
        slivers: [
          SliverPersistentHeader(
            pinned: true,
            // floating: true,
            delegate: CollapsibleHeaderDelegate(),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 16,
            ),
          ),
          _ScrollableItems(data: data),
        ],
      ),

      // _ScrollableItems(data: data)),
    );
  }
}

class _ScrollableItems extends StatelessWidget {
  const _ScrollableItems({
    required this.data,
    super.key,
  });

  final List<NotificationEntry> data;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          final item = data[index];
          return NotificationListTile(
            key: ValueKey(item.id),
            item: item,
          );
        },
        childCount: data.length,
      ),
    );
  }
}

class CollapsibleHeaderDelegate extends SliverPersistentHeaderDelegate {
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    final title = 'Notifications';

    // Calculate the progress of the header collapse (0.0 to 1.0)
    final progress = (maxExtent - shrinkOffset) / (maxExtent - minExtent);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Container(
            alignment: Alignment.centerLeft,
            child: SingleChildScrollView(
              child: Row(
                children: [
                  Text(
                    title,
                    style: context.headlineMedium.copyWith(color: kPink),
                  ),
                  Spacer(),
                  NotificationFilterIcons(),
                ],
              ),
            ),
          ),
        ),
        Opacity(
          opacity: (1 - progress).clamp(0.0, 1.0),
          // Fade out the title based on the collapse progress
          child: const Divider(
            color: kPink,
            thickness: 2,
          ),
        ),
      ],
    );
  }

  @override
  double get maxExtent => 40.0; // Set your desired expanded header height

  @override
  double get minExtent => 2.0; // Set your desired collapsed header height

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}

class NotificationFilterIcons extends ConsumerWidget {
  const NotificationFilterIcons({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final urgency = ref.watch(filterUrgencyProvider);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: List.generate(
        5,
        (index) => Padding(
          padding: const EdgeInsets.only(right: 4.0),
          child: _NotificationFilterIcon(
            urgency: index,
            selected: urgency >= index,
            onTap: () {
              ref.read(filterUrgencyProvider.notifier).update((state) => index);
            },
          ),
        ),
      ),
    );
  }
}

class _NotificationFilterIcon extends StatelessWidget {
  const _NotificationFilterIcon({
    required this.urgency,
    required this.onTap,
    this.selected = false,
  });

  final int urgency;
  final VoidCallback onTap;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    return InteractableCard(
      onTap: onTap,
      selected: selected,
      highlightColor: kPink,
      elevation: 2,
      customPadding: EdgeInsets.all(2),
      child: SvgPicture.asset(
        'assets/images/fire_urgency.svg',
        height: 18,
        width: 18,
        // color: selected ? kPink : kGrey,
      ),
    );
  }
}
