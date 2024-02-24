import 'package:flutter/material.dart';
import 'package:smart_ui_kit/smart_ui_kit.dart';
import 'package:smart_ui_kit/src/components/buttons/data/button_size_data.dart';

enum SmartButtonSize {
  xs,
  sm,
  md,
  lg,
  xl;

  ButtonSizeData get data => switch (this) {
        xs => ButtonSizeData(
            padding: EdgeInsets.symmetric(
              vertical: SmartDimension.size8.h,
              horizontal: SmartDimension.size8.w,
            ),
            borderRadius: SmartBorderRadius.xs,
            textStyle: SmartTextStyle.bodyXs(
              fontWeight: FontWeight.w700,
            ),
            width: 34.w,
            height: 32.h,
          ),
        sm => ButtonSizeData(
            padding: EdgeInsets.symmetric(
              vertical: SmartDimension.size8.h,
              horizontal: SmartDimension.size12.w,
            ),
            borderRadius: SmartBorderRadius.sm,
            textStyle: SmartTextStyle.bodySm(
              fontWeight: FontWeight.w700,
            ),
            width: 40.w,
            height: 36.h,
          ),
        md => ButtonSizeData(
            padding: EdgeInsets.symmetric(
              vertical: SmartDimension.size8.h,
              horizontal: SmartDimension.size12.w,
            ),
            borderRadius: SmartBorderRadius.sm,
            textStyle: SmartTextStyle.body(
              fontWeight: FontWeight.w700,
            ),
            width: 48.w,
            height: 40.h,
          ),
        lg => ButtonSizeData(
            padding: EdgeInsets.symmetric(
              vertical: SmartDimension.size12.h,
              horizontal: SmartDimension.size16.w,
            ),
            borderRadius: SmartBorderRadius.md,
            textStyle: SmartTextStyle.bodyLg(
              fontWeight: FontWeight.w700,
            ),
            width: 48.w,
            height: 48.h,
          ),
        xl => ButtonSizeData(
            padding: EdgeInsets.all(SmartDimension.size16.r),
            borderRadius: SmartBorderRadius.md,
            textStyle: SmartTextStyle.bodyLg(
              fontWeight: FontWeight.w700,
            ),
            width: 1.sw,
            height: 56.h,
          ),
      };
}
