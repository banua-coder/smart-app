// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_import, prefer_relative_imports, directives_ordering

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AppGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:smart_widgetbook/widgetbook/usecases/button_use_case.dart'
    as _i2;
import 'package:smart_widgetbook/widgetbook/usecases/color_use_case.dart'
    as _i3;
import 'package:widgetbook/widgetbook.dart' as _i1;

final directories = <_i1.WidgetbookNode>[
  _i1.WidgetbookFolder(
    name: 'Atoms',
    children: [
      _i1.WidgetbookComponent(
        name: 'SmartButton',
        useCases: [
          _i1.WidgetbookUseCase(
            name: 'Danger',
            builder: _i2.dangerButtonUseCase,
          ),
          _i1.WidgetbookUseCase(
            name: 'Primary',
            builder: _i2.primaryButtonUseCase,
          ),
          _i1.WidgetbookUseCase(
            name: 'Secondary',
            builder: _i2.secondaryButtonUseCase,
          ),
          _i1.WidgetbookUseCase(
            name: 'Tertiary',
            builder: _i2.tertiaryButtonUseCase,
          ),
        ],
      )
    ],
  ),
  _i1.WidgetbookFolder(
    name: 'Foundations',
    children: [
      _i1.WidgetbookComponent(
        name: 'Colors',
        useCases: [
          _i1.WidgetbookUseCase(
            name: 'Actions',
            builder: _i3.actionUseCase,
          ),
          _i1.WidgetbookUseCase(
            name: 'Background',
            builder: _i3.backgroundUseCase,
          ),
          _i1.WidgetbookUseCase(
            name: 'Icon',
            builder: _i3.iconUseCase,
          ),
          _i1.WidgetbookUseCase(
            name: 'Outline',
            builder: _i3.outlineUseCase,
          ),
          _i1.WidgetbookUseCase(
            name: 'Overlay',
            builder: _i3.overlayUseCase,
          ),
          _i1.WidgetbookUseCase(
            name: 'Text',
            builder: _i3.textUseCase,
          ),
        ],
      )
    ],
  ),
];
