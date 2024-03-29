import 'package:flutter/material.dart';

import 'package:smart_ui_kit/smart_ui_kit.dart';

class SmartComponentInit extends StatelessWidget {
  const SmartComponentInit({
    required this.builder, super.key,
    this.designSize,
  });

  final Widget Function(BuildContext context) builder;
  final Size? designSize;

  @override
  Widget build(BuildContext context) => MediaQuery(
        data: MediaQueryData.fromView(View.of(context)),
        child: LayoutBuilder(
          builder: (_, constraints) {
            if (constraints.maxWidth != 0) {
              ScreenUtil.init(
                _,
                designSize: Size(
                  designSize?.width ?? constraints.maxWidth,
                  designSize?.height ?? constraints.maxHeight,
                ),
              );

              return builder(context);
            }

            return nil;
          },
        ),
      );
}
