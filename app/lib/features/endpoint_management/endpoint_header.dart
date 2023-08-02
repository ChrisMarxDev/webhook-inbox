// ignore_for_file: strict_raw_type

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_app/app/theme.dart';
import 'package:my_app/common/common.dart';

class EndpointHeader extends ConsumerWidget {
  const EndpointHeader({super.key, required this.selectedEndpoint});

  final String selectedEndpoint;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final baseUrl = ref.watch(httpsUrlProvider);
    return HeaderWidget(baseUrl: baseUrl, selectedEndpoint: selectedEndpoint);
  }
}

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({
    super.key,
    required this.baseUrl,
    required this.selectedEndpoint,
  });

  final String baseUrl;
  final String selectedEndpoint;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: BaseCard(
        child: Row(
          children: [
            // AspectRatio(
            //   aspectRatio: 1,
            //   child: SvgPicture.asset(
            //     'assets/images/nana_close_color.svg',
            //   ),
            // ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Your endpoint is:',
                    style: context.captionSmall,
                  ),
                  const SizedBox(height: 4),
                  Expanded(
                    child: SelectableText(
                      // 'https://banana-push.io/notification/${selectedEndpoint}',
                      'localhost:8080/notifications/${selectedEndpoint}',
                      style: const TextStyle(
                          fontFamily: 'Anton',
                          color: kPink,
                          fontSize: 12,
                          letterSpacing: 0),
                      // '$baseUrl/notification/${selectedEndpoint}',
                      maxLines: 2,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 8),
            InteractableCard(
              highlightColor: kWhite,
              backgroundColor: kPink,
              elevation: 2,
              onTap: () {
                Clipboard.setData(ClipboardData(
                    text: '$baseUrl/notification/${selectedEndpoint}'));
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Copied to clipboard'),
                  ),
                );
              },
              child: const Icon(
                Icons.copy,
                color: Colors.white,
                size: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
