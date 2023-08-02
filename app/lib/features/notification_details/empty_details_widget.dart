import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_app/common/common.dart';

import 'notification_details_content.dart';

class EmptyDetailsWidget extends StatefulWidget {
  const EmptyDetailsWidget({
    super.key,
  });

  @override
  State<EmptyDetailsWidget> createState() => _EmptyDetailsWidgetState();
}

class _EmptyDetailsWidgetState extends State<EmptyDetailsWidget> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return BaseCard(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          DetailsPageHeader(
            onSelect: (index) {
              setState(() {
                this.index = index;
              });
            },
            selectedIndex: index,
          ),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset('assets/images/empty_nana.svg'),
                const Text('No notification selected'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
