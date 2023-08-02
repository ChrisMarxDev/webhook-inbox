import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:models/src/notification_entry.dart';
import 'package:my_app/common/common.dart';
import 'package:my_app/features/endpoint_management/endpoint_management.dart';
import 'package:my_app/features/notification_details/notification_details_content.dart';

import 'package:my_app/features/notification_overview/notification_overview.dart';

import 'package:flutter/widgets.dart';
import 'package:my_app/util/util.dart';

class HomeContainerScreen extends ConsumerWidget {
  const HomeContainerScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AsyncEndpointLoader(
      builder: (context, endpoints) => NotificationOverViewContent(
        endpoints: endpoints.map((e) => e.endpointId),
      ),
    );
  }
}

class NotificationOverViewContent extends ConsumerWidget {
  const NotificationOverViewContent({required this.endpoints, super.key});

  final Iterable<String> endpoints;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final endpoint = endpoints.first;
    final entries = ref.watch(filteredEntriesFutureStateProvider(endpoint));
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: isMobile
          ? NotificationOverviewMobileLayoutScreen(
              endpoint: endpoint,
              entries: entries,
            )
          : NotificationOverviewDesktopLayoutScreen(
              endpoint: endpoint,
              entries: entries,
            ),
    );
  }
}

class NotificationOverviewDesktopLayoutScreen extends ConsumerWidget {
  const NotificationOverviewDesktopLayoutScreen({
    required this.endpoint,
    required this.entries,
    super.key,
  });

  final String endpoint;
  final AsyncValue<List<NotificationEntry>> entries;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MouseRegionBackground(
      child: Padding(
        padding: const EdgeInsets.only(top: 30, left: 16, right: 16),
        child: Column(
          children: [
            EndpointHeader(selectedEndpoint: endpoint),
            const SizedBox(height: 12),
            AsyncValuePage(
              asyncValue: entries,
              builder: (context, data) => Expanded(
                child: Row(
                  children: [
                    Flexible(
                      fit: FlexFit.tight,
                      flex: 3,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 6),
                        child: NotificationList(endpoint: endpoint, data: data),
                      ),
                    ),
                    const Flexible(
                        fit: FlexFit.tight,
                        flex: 4,
                        child: Padding(
                          padding: EdgeInsets.only(left: 6, bottom: 16),
                          child: NotificationDetailsContent(),
                        )),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class NotificationOverviewMobileLayoutScreen extends ConsumerWidget {
  const NotificationOverviewMobileLayoutScreen({
    required this.endpoint,
    required this.entries,
    super.key,
  });

  final String endpoint;
  final AsyncValue<List<NotificationEntry>> entries;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Material(
      child: MouseRegionBackground(
        child: Padding(
          padding: const EdgeInsets.only(top: 30, left: 16, right: 16),
          child: Column(
            children: [
              SafeArea(
                  bottom: false,
                  child: EndpointHeader(selectedEndpoint: endpoint)),
              const SizedBox(height: 12),
              AsyncValuePage(
                asyncValue: entries,
                builder: (context, data) => Expanded(
                  child: Row(
                    children: [
                      Flexible(
                        fit: FlexFit.tight,
                        flex: 3,
                        child: NotificationList(endpoint: endpoint, data: data),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
