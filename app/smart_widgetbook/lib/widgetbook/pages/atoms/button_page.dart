import 'package:flutter/material.dart';
import 'package:smart_ui_kit/smart_ui_kit.dart';

class ButtonPage extends StatelessWidget {
  const ButtonPage({
    required this.label,
    this.size = SmartButtonSize.md,
    this.enable = true,
    this.debounce = true,
    this.wrap = true,
    this.showLeading = false,
    this.showTrailing = false,
    this.variant = SmartButtonVariant.primary,
    this.type = SmartButtonType.filled,
    super.key,
  });

  final bool wrap;
  final bool showLeading;
  final bool showTrailing;
  final bool enable;
  final bool debounce;
  final String label;
  final SmartButtonType type;
  final SmartButtonSize size;
  final SmartButtonVariant variant;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Padding(
        padding: EdgeInsets.all(SmartDimension.size16.r),
        child: Center(
          child: SmartButton(
            label: label,
            enable: enable,
            size: size,
            type: type,
            onPressed: () async {},
            variant: variant,
            debounce: debounce,
            wrap: wrap,
            leading: showLeading
                ? Icon(
                    Icons.download_rounded,
                    size: (size.data.textStyle.fontSize ?? 0) + 6.sp,
                  )
                : null,
            trailing: showTrailing
                ? Icon(
                    Icons.arrow_right_rounded,
                    size: (size.data.textStyle.fontSize ?? 0) + 6.sp,
                  )
                : null,
          ),
        ),
      ),
    );
  }
}
