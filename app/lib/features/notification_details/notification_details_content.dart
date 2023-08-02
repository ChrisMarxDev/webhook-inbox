import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:models/models.dart';
import 'package:my_app/app/theme.dart';
import 'package:my_app/common/common.dart';
import 'package:my_app/features/notification_details/empty_details_widget.dart';
import 'package:my_app/l10n/l10n.dart';
import 'package:my_app/util/util.dart';

import '../../common/widgets/swap_animation_wrapper.dart';
import '../../common/widgets/urgency_label.dart';

final selectedNotificationProvider =
    StateProvider<NotificationEntry?>((ref) => null);

class NotificationDetailsContent extends ConsumerWidget {
  const NotificationDetailsContent({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final entry = ref.watch(selectedNotificationProvider);

    return entry == null
        ? const EmptyDetailsWidget()
        : NotificationListTileBody(item: entry);
  }
}

class NotificationListTileBody extends StatefulWidget {
  const NotificationListTileBody({
    required this.item,
    super.key,
  });

  final NotificationEntry item;

  @override
  State<NotificationListTileBody> createState() =>
      _NotificationListTileBodyState();
}

class _NotificationListTileBodyState extends State<NotificationListTileBody> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final headerKey = Key('${widget.item.id}-header');
    return SwapAnimationWrapper(
      child: BaseCard(
        key: Key(widget.item.id),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 4.0, bottom: 16.0),
              child: Row(
                children: [
                  Image.network( widget.item.imageUrl ?? '', height: 24,),
                  Text(
                    widget.item.displayTitle,
                    style: context.titleMedium,
                  ),
                  const SizedBox(width: 8),
                  Text(
                    widget.item.subType ?? '',
                  ),
                  UrgencyLabel(
                    urgency: widget.item.internalUrgency,
                  ),
                  const Spacer(),
                  Text(
                    widget.item.createdAt.dynamicFormattedDateTime,
                    key: Key(widget.item.endpointId),
                  ),
                ],
              ),
            ),
            DetailsPageHeader(
              selectedIndex: selectedIndex,
              onSelect: (index) => setState(() {
                setState(() {
                  selectedIndex = index;
                });
              }),
            ),
            Expanded(
                child: selectedIndex == 0
                    ? HeadersWidget(
                        item: widget.item,
                        key: headerKey,
                      )
                    : RequestBodyWidget(data: widget.item)),
          ],
        ),
      ),
    );
  }
}

class DetailsPageHeader extends ConsumerWidget {
  const DetailsPageHeader({
    required this.onSelect,
    required this.selectedIndex,
    super.key,
  });

  final void Function(int index) onSelect;
  final int selectedIndex;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SelectableHeader(
      builder: (item, index, selected) {
        return InteractableCard(
          onTap: () => onSelect(index),
          selected: selected,
          child: ConstrainedBox(
            constraints: const BoxConstraints(minWidth: 96),
            child: Text(
              item,
              style: TextStyle(
                color: selected ? context.onPrimary : context.onBackground,
              ),
            ),
          ),
        );
      },
      items: [
        context.l10n.headers,
        context.l10n.body,
      ],
      selectedIndex: selectedIndex,
    );
  }
}

class RequestBodyWidget extends StatelessWidget {
  const RequestBodyWidget({
    required this.data,
    super.key,
  });

  final NotificationEntry data;

  @override
  Widget build(BuildContext context) {
    return JsonViewWidget(
      data: jsonDecode(
        data.jsonBodyRaw != null && data.jsonBodyRaw!.isNotEmpty
            ? data.jsonBodyRaw!
            : '{}',
      ),
    );
  }
}

class HeadersWidget extends StatelessWidget {
  const HeadersWidget({
    required this.item,
    super.key,
  });

  final NotificationEntry item;

  @override
  Widget build(BuildContext context) {
    return JsonViewWidget(data: item.headers);
  }
}
