import 'package:smart_ui_kit/src/atoms/assets/data/smart_asset_data.dart';
import 'package:smart_ui_kit/src/atoms/assets/enums/smart_asset_type.dart';
import 'package:smart_ui_kit/src/core/generated/assets.gen.dart';
import 'package:smart_ui_kit/src/utils/asset_x.dart';

enum SmartLogo {
  banuaCoder,
  smart;

  SmartAssetData<dynamic> get data => switch (this) {
        banuaCoder => SmartAssetData<SvgGenImage>(
            file: (context) => context.smartAsset.svg.banuaCoder,
            type: SmartAssetType.svg,
            overrideColor: false,
          ),
        smart => SmartAssetData<SvgGenImage>(
            file: (context) => context.smartAsset.svg.smart,
            type: SmartAssetType.svg,
            overrideColor: false,
          ),
      };
}
