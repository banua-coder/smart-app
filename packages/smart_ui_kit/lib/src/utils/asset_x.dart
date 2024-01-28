import 'package:flutter/material.dart';
import 'package:smart_ui_kit/src/core/themes/extensions/smart_asset_extension.dart';

extension AssetX on BuildContext {
  ThemeExtension<SmartAssetExtension> get _smartAsset =>
      Theme.of(this).extension<SmartAssetExtension>()!;

  SmartAssetExtension get smartAsset => _smartAsset as SmartAssetExtension;
}
