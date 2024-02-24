import 'package:flutter/material.dart';
import 'package:smart_ui_kit/smart_ui_kit.dart';
import 'package:smart_widgetbook/widgetbook/pages/atoms/atoms.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(
  name: 'Animation',
  type: SmartAsset,
)
Widget animationUseCase(BuildContext context) => AssetPage.animation(
      animation: context.knobs.list(
        label: 'Animation',
        options: SmartAnimations.values,
      ),
      width: context.knobs.int
          .slider(
            label: 'Width',
            initialValue: 6,
            min: 1,
            max: 10,
          )
          .toDouble(),
      height: context.knobs.int
          .slider(
            label: 'Height',
            initialValue: 6,
            min: 1,
            max: 10,
          )
          .toDouble(),
    );

@UseCase(
  name: 'Logo',
  type: SmartAsset,
)
Widget logoUseCase(BuildContext context) => AssetPage.logo(
      logo: context.knobs.list(
        label: 'Logo',
        options: SmartLogo.values,
      ),
      width: context.knobs.int
          .slider(
            label: 'Width',
            initialValue: 6,
            min: 1,
            max: 10,
          )
          .toDouble(),
      height: context.knobs.int
          .slider(
            label: 'Height',
            initialValue: 6,
            min: 1,
            max: 10,
          )
          .toDouble(),
    );
