import 'package:flutter/material.dart';
import 'package:smart_ui_kit/src/atoms/assets/enums/smart_asset_type.dart';

@immutable
class SmartAssetData<T> {
  final T Function(BuildContext context) file;
  final SmartAssetType type;
  final bool overrideColor;
  const SmartAssetData({
    required this.file,
    required this.type,
    this.overrideColor = true,
  });

  String get packageName => 'smart_ui_kit';
}
