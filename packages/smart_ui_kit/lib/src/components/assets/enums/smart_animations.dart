import 'package:smart_ui_kit/src/components/assets/data/smart_asset_data.dart';
import 'package:smart_ui_kit/src/components/assets/enums/smart_asset_type.dart';
import 'package:smart_ui_kit/src/core/generated/assets.gen.dart';
import 'package:smart_ui_kit/src/utils/asset_x.dart';

enum SmartAnimations {
  maintenance;

  SmartAssetData<LottieGenImage> get data => switch (this) {
        maintenance => SmartAssetData(
            file: (context) => context.smartAsset.animation.maintenance,
            type: SmartAssetType.lottie,
            overrideColor: false,
          ),
      };
}
