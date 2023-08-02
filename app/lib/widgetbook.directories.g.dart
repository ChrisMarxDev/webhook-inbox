// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_import, prefer_relative_imports, directives_ordering

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AppGenerator
// **************************************************************************

import 'dart:convert';
import 'dart:core';
import 'dart:math';
import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/material/button_style.dart';
import 'package:flutter/src/material/card_theme.dart';
import 'package:flutter/src/material/color_scheme.dart';
import 'package:flutter/src/material/colors.dart';
import 'package:flutter/src/material/constants.dart';
import 'package:flutter/src/material/ink_well.dart';
import 'package:flutter/src/material/material.dart';
import 'package:flutter/src/material/material_state.dart';
import 'package:flutter/src/material/theme.dart';
import 'package:flutter/src/material/theme_data.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/default_selection_style.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/inherited_theme.dart';
import 'package:flutter/src/widgets/media_query.dart';
import 'package:flutter/src/widgets/selection_container.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_json_view/src/builders/builders.dart';
import 'package:flutter_json_view/src/theme/json_view_theme.dart';
import 'package:flutter_json_view/src/widgets/base_json_view.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:json_view/src/models/json_color_scheme.dart';
import 'package:json_view/src/models/json_style_scheme.dart';
import 'package:json_view/src/widgets/json_config.dart';
import 'package:json_view/src/widgets/list_tile.dart';
import 'package:json_view/src/widgets/map_tile.dart';
import 'package:json_view/src/widgets/simple_tiles.dart';
import 'package:json_view/src/widgets/string_tile.dart';
import 'package:models/models.dart';
import 'package:my_app/common/common.dart';
import 'package:my_app/common/widgets/json_view_widget.dart';
import 'package:my_app/common/widgets/loading_indicator.dart';
import 'package:my_app/common/widgets/texts.dart';
import 'package:my_app/common/widgets/widgetbook_components.dart';
import 'package:my_app/features/endpoint_management/endpoint_management_logic.dart';
import 'package:my_app/features/notification_overview/notification_tile_component.dart';
import 'package:widgetbook/widgetbook.dart';

final directories = [
  WidgetbookFolder(
    name: 'widgets',
    children: [
      WidgetbookComponent(
        name: 'JsonView',
        useCases: [
          WidgetbookUseCase(
            name: 'Base',
            builder: (context) => jsonView(context),
          ),
        ],
      ),
      WidgetbookComponent(
        name: 'Text',
        useCases: [
          WidgetbookUseCase(
            name: 'titleSmall',
            builder: (context) => titleSmalle(context),
          ),
          WidgetbookUseCase(
            name: 'titleMedium',
            builder: (context) => titleMedium(context),
          ),
          WidgetbookUseCase(
            name: 'titleLarge',
            builder: (context) => titleLarge(context),
          ),
          WidgetbookUseCase(
            name: 'headlineSmall',
            builder: (context) => headlineSmall(context),
          ),
          WidgetbookUseCase(
            name: 'headlineMedium',
            builder: (context) => headlineMedium(context),
          ),
          WidgetbookUseCase(
            name: 'headlineLarge',
            builder: (context) => headlineLarge(context),
          ),
          WidgetbookUseCase(
            name: 'bodySmall',
            builder: (context) => bodySmall(context),
          ),
          WidgetbookUseCase(
            name: 'bodyMedium',
            builder: (context) => bodyMedium(context),
          ),
          WidgetbookUseCase(
            name: 'bodyLarge',
            builder: (context) => bodyLarge(context),
          ),
          WidgetbookUseCase(
            name: 'captionSmall',
            builder: (context) => captionSmall(context),
          ),
          WidgetbookUseCase(
            name: 'captionMedium',
            builder: (context) => captionMedium(context),
          ),
          WidgetbookUseCase(
            name: 'captionLarge',
            builder: (context) => captionLarge(context),
          ),
          WidgetbookUseCase(
            name: 'all',
            builder: (context) => allTexts(context),
          ),
        ],
      ),
    ],
  ),
  WidgetbookFolder(
    name: 'features',
    children: [
      WidgetbookFolder(
        name: 'endpoint_management',
        children: [
          WidgetbookComponent(
            name: 'HeaderWidget',
            useCases: [
              WidgetbookUseCase(
                name: 'HeaderWidget',
                builder: (context) => headerWidget(context),
              ),
            ],
          ),
        ],
      ),
    ],
  ),
  WidgetbookFolder(
    name: 'common',
    children: [
      WidgetbookFolder(
        name: 'widgets',
        children: [
          WidgetbookComponent(
            name: 'LoadingIndicator',
            useCases: [
              WidgetbookUseCase(
                name: 'Base',
                builder: (context) => baseLoadingIndicator(context),
              ),
            ],
          ),
        ],
      ),
    ],
  ),
  WidgetbookFolder(
    name: 'material',
    children: [
      WidgetbookComponent(
        name: 'Card',
        useCases: [
          WidgetbookUseCase(
            name: 'NotificationTileList',
            builder: (context) => baseNotificationTileList(context),
          ),
          WidgetbookUseCase(
            name: 'Base',
            builder: (context) => baseCard(context),
          ),
          WidgetbookUseCase(
            name: 'Interactable',
            builder: (context) => interactableCard(context),
          ),
        ],
      ),
      WidgetbookComponent(
        name: 'ButtonStyleButton',
        useCases: [
          WidgetbookUseCase(
            name: 'Elevated',
            builder: (context) => elevatedButton(context),
          ),
          WidgetbookUseCase(
            name: 'Outlined',
            builder: (context) => outlinedButton(context),
          ),
        ],
      ),
    ],
  ),
  WidgetbookComponent(
    name: 'JsonView',
    useCases: [
      WidgetbookUseCase(
        name: 'JsonView in Card',
        builder: (context) => jsonViewInCard(context),
      ),
    ],
  ),
];
