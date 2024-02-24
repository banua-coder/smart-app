import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:smart_ui_kit/smart_ui_kit.dart';
import 'package:tap_debouncer/tap_debouncer.dart';

class SmartButton extends StatelessWidget {
  const SmartButton({
    required this.label,
    this.size = SmartButtonSize.md,
    this.onPressed,
    this.variant = SmartButtonVariant.primary,
    this.type = SmartButtonType.filled,
    this.enable = true,
    this.debounce = true,
    this.wrap = true,
    this.leading,
    this.trailing,
    super.key,
  });

  factory SmartButton.primary({
    required String label,
    SmartButtonType type = SmartButtonType.filled,
    bool enable = true,
    Future<void> Function()? onPressed,
    SmartButtonSize size = SmartButtonSize.md,
    bool debounce = true,
    bool wrap = true,
    Widget? leading,
    Widget? trailing,
  }) =>
      SmartButton(
        label: label,
        size: size,
        type: type,
        enable: enable,
        onPressed: onPressed,
        leading: leading,
        trailing: trailing,
        debounce: debounce,
        wrap: wrap,
      );

  factory SmartButton.secondary({
    required String label,
    SmartButtonType type = SmartButtonType.filled,
    bool enable = true,
    Future<void> Function()? onPressed,
    SmartButtonSize size = SmartButtonSize.md,
    bool debounce = true,
    bool wrap = true,
    Widget? leading,
    Widget? trailing,
  }) =>
      SmartButton(
        variant: SmartButtonVariant.secondary,
        label: label,
        size: size,
        type: type,
        enable: enable,
        onPressed: onPressed,
        leading: leading,
        trailing: trailing,
        debounce: debounce,
        wrap: wrap,
      );

  factory SmartButton.tertiary({
    required String label,
    SmartButtonType type = SmartButtonType.filled,
    bool enable = true,
    Future<void> Function()? onPressed,
    SmartButtonSize size = SmartButtonSize.md,
    bool debounce = true,
    bool wrap = true,
    Widget? leading,
    Widget? trailing,
  }) =>
      SmartButton(
        variant: SmartButtonVariant.tertiary,
        label: label,
        size: size,
        type: type,
        enable: enable,
        onPressed: onPressed,
        leading: leading,
        trailing: trailing,
        debounce: debounce,
        wrap: wrap,
      );

  factory SmartButton.danger({
    required String label,
    SmartButtonType type = SmartButtonType.filled,
    bool enable = true,
    Future<void> Function()? onPressed,
    SmartButtonSize size = SmartButtonSize.md,
    bool debounce = true,
    bool wrap = true,
    Widget? leading,
    Widget? trailing,
  }) =>
      SmartButton(
        variant: SmartButtonVariant.danger,
        label: label,
        size: size,
        type: type,
        enable: enable,
        onPressed: onPressed,
        leading: leading,
        trailing: trailing,
        debounce: debounce,
        wrap: wrap,
      );

  final bool enable;
  final String label;
  final SmartButtonSize size;
  final SmartButtonVariant variant;
  final Future<void> Function()? onPressed;
  final SmartButtonType type;
  final Widget? leading;
  final Widget? trailing;
  final bool debounce;
  final bool wrap;

  @override
  Widget build(BuildContext context) => debounce
      ? TapDebouncer(
          onTap: onPressed,
          cooldown: const Duration(milliseconds: 500),
          waitBuilder: (context, child) => _ButtonWidget(
            enable: enable,
            label: label,
            size: size,
            variant: variant,
            type: type,
            leading: SpinKitFadingCircle(
              size: size.data.textStyle.fontSize ?? 20.sp,
              color: type.data(context).disabledFgColor,
            ),
            wrap: wrap,
          ),
          builder: (context, onTap) => _ButtonWidget(
            enable: enable,
            label: label,
            size: size,
            variant: variant,
            type: type,
            onPressed: onTap,
            leading: leading,
            trailing: trailing,
            wrap: wrap,
          ),
        )
      : _ButtonWidget(
          enable: enable,
          label: label,
          size: size,
          variant: variant,
          type: type,
          onPressed: onPressed,
          leading: leading,
          trailing: trailing,
          wrap: wrap,
        );
}

class _ButtonWidget extends StatelessWidget {
  const _ButtonWidget({
    required this.enable,
    required this.label,
    required this.size,
    required this.variant,
    required this.type,
    this.onPressed,
    this.leading,
    this.trailing,
    this.wrap = true,
  });

  final bool enable;
  final String label;
  final SmartButtonSize size;
  final SmartButtonVariant variant;
  final Future<void> Function()? onPressed;
  final SmartButtonType type;
  final Widget? leading;
  final Widget? trailing;
  final bool wrap;

  @override
  Widget build(BuildContext context) {
    final child = SizedBox(
      height: size.data.height,
      child: MaterialButton(
        minWidth: size.data.width,
        onPressed: enable ? onPressed : null,
        elevation: 0,
        disabledElevation: 0,
        highlightElevation: 0,
        focusElevation: 0,
        hoverElevation: 0,
        height: size.data.height,
        color: _backgroundColor(context),
        disabledColor: type.data(context).disabledBgColor,
        disabledTextColor: type.data(context).disabledFgColor,
        focusColor: Colors.transparent,
        textColor: _textColor(context),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(size.data.borderRadius),
          side: BorderSide(
            color: _borderColor(context),
            width: 1.sp,
          ),
        ),
        child: Padding(
          padding: size.data.padding,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (leading != null) ...[
                leading!,
                const Gap(SmartDimension.size8),
              ],
              Flexible(
                child: Text(
                  label,
                  style: size.data.textStyle,
                  textAlign: TextAlign.center,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              if (trailing != null) ...[
                const Gap(SmartDimension.size8),
                trailing!,
              ],
            ],
          ),
        ),
      ),
    );
    return wrap
        ? IntrinsicWidth(
            child: child,
          )
        : child;
  }

  Color _backgroundColor(BuildContext context) {
    if (!enable || onPressed == null) {
      return type.data(context).disabledBgColor;
    }

    if (type == SmartButtonType.filled) {
      return variant.data(context).backgroundColor;
    }

    return variant.data(context).outlineBgColor;
  }

  Color _textColor(BuildContext context) {
    if (!enable || onPressed == null) {
      return type.data(context).disabledFgColor;
    }

    if (type == SmartButtonType.filled) {
      return variant.data(context).foregroundColor;
    }

    if (variant == SmartButtonVariant.tertiary) {
      return context.smartColor.text.neutral.strong;
    }

    return variant.data(context).outlineFgColor;
  }

  Color _borderColor(BuildContext context) {
    if (!enable || onPressed == null) {
      return type.data(context).disabledBorderColor;
    }

    if (type == SmartButtonType.outline) {
      return variant.data(context).borderColor;
    }

    return Colors.transparent;
  }
}
