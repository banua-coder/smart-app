import 'package:flutter/material.dart';
import 'package:smart_ui_kit/smart_ui_kit.dart';
import 'package:smart_widgetbook/smart_widgetbook.dart';

class ButtonPage extends StatefulWidget {
  const ButtonPage({super.key});

  @override
  State<ButtonPage> createState() => _ButtonPageState();
}

class _ButtonPageState extends State<ButtonPage> {
  late final ValueNotifier<SmartButtonSize> _buttonSizeNotifier;

  @override
  void initState() {
    super.initState();
    _buttonSizeNotifier = ValueNotifier(SmartButtonSize.md);
  }

  @override
  void dispose() {
    _buttonSizeNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Button'),
          bottom: TabBar(
            tabAlignment: TabAlignment.start,
            indicatorColor: context.smartColor.icon.solid.primary,
            labelColor: context.smartColor.text.solid.primary,
            isScrollable: true,
            tabs: List.generate(
              SmartButtonVariant.values.length,
              (index) => Tab(
                text: SmartButtonVariant.values[index].name.toUpperCase(),
              ),
            ),
          ),
          actions: [
            ValueListenableBuilder(
              valueListenable: _buttonSizeNotifier,
              builder: (_, value, __) => PopupMenuButton<SmartButtonSize>(
                initialValue: _buttonSizeNotifier.value,
                surfaceTintColor: context.smartColor.background.card.main,
                onSelected: (value) => _buttonSizeNotifier.value = value,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    SmartBorderRadius.md,
                  ),
                ),
                child: Chip(
                  avatar: Icon(
                    Icons.swap_vert_rounded,
                    color: context.smartColor.icon.neutral.main,
                    size: 20.sp,
                  ),
                  label: SmartTextBodySm(
                    value.name,
                    fontWeight: FontWeight.bold,
                    color: context.smartColor.text.neutral.strong,
                  ),
                ),
                itemBuilder: (context) => List.generate(
                  SmartButtonSize.values.length,
                  (index) => PopupMenuItem(
                    value: SmartButtonSize.values[index],
                    child: Text('${SmartButtonSize.values[index]}'),
                  ),
                ),
              ),
            ),
            const ThemeSwitcherButton(),
          ],
        ),
        body: TabBarView(
          children: List.generate(
            SmartButtonVariant.values.length,
            (index) => ValueListenableBuilder(
              valueListenable: _buttonSizeNotifier,
              builder: (_, size, __) {
                return _ButtonList(
                  size: size,
                  variant: SmartButtonVariant.values[index],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}

class _ButtonList extends StatelessWidget {
  const _ButtonList({
    required this.variant,
    this.size = SmartButtonSize.md,
  });

  final SmartButtonVariant variant;
  final SmartButtonSize size;

  @override
  Widget build(BuildContext context) => SingleChildScrollView(
        padding: EdgeInsets.all(SmartDimension.size16.r),
        child: Column(
          children: [
            SmartButton(
              variant: variant,
              size: size,
              label: 'Filled',
              onPressed: () async {},
            ),
            Gap(
              SmartDimension.size8.h,
            ),
            SmartButton(
              variant: variant,
              size: size,
              label: 'Filled (Leading)',
              onPressed: () async {},
              leading: Icon(
                Icons.wallet,
                size: (size.data.textStyle.fontSize ?? 0) + 6.sp,
              ),
            ),
            Gap(
              SmartDimension.size8.h,
            ),
            SmartButton(
              variant: variant,
              size: size,
              label: 'Filled (Trailing)',
              onPressed: () async {},
              trailing: Icon(
                Icons.calendar_month_rounded,
                size: (size.data.textStyle.fontSize ?? 0) + 6.sp,
              ),
            ),
            Gap(
              SmartDimension.size8.h,
            ),
            SmartButton(
              variant: variant,
              size: size,
              label: 'Filled (Trailing & Leading)',
              onPressed: () async {},
              trailing: Icon(
                Icons.arrow_upward_rounded,
                size: (size.data.textStyle.fontSize ?? 0) + 6.sp,
              ),
              leading: Icon(
                Icons.arrow_downward_rounded,
                size: (size.data.textStyle.fontSize ?? 0) + 6.sp,
              ),
            ),
            Gap(
              SmartDimension.size8.h,
            ),
            SmartButton(
              variant: variant,
              size: size,
              label: 'Filled (Disabled)',
            ),
            Gap(
              SmartDimension.size8.h,
            ),
            SmartButton(
              variant: variant,
              size: size,
              label: 'Outline',
              type: SmartButtonType.outline,
              onPressed: () async {},
            ),
            Gap(
              SmartDimension.size8.h,
            ),
            SmartButton(
              variant: variant,
              size: size,
              label: 'Outline (Leading)',
              type: SmartButtonType.outline,
              onPressed: () async {},
              leading: Icon(
                Icons.wallet,
                size: (size.data.textStyle.fontSize ?? 0) + 6.sp,
              ),
            ),
            Gap(
              SmartDimension.size8.h,
            ),
            SmartButton(
              variant: variant,
              size: size,
              label: 'Outline (Trailing)',
              type: SmartButtonType.outline,
              onPressed: () async {},
              trailing: Icon(
                Icons.calendar_month_rounded,
                size: (size.data.textStyle.fontSize ?? 0) + 6.sp,
              ),
            ),
            Gap(
              SmartDimension.size8.h,
            ),
            SmartButton(
              variant: variant,
              size: size,
              label: 'Outline (Trailing & Leading)',
              onPressed: () async {},
              type: SmartButtonType.outline,
              trailing: Icon(
                Icons.arrow_upward_rounded,
                size: (size.data.textStyle.fontSize ?? 0) + 6.sp,
              ),
              leading: Icon(
                Icons.arrow_downward_rounded,
                size: (size.data.textStyle.fontSize ?? 0) + 6.sp,
              ),
            ),
            Gap(
              SmartDimension.size8.h,
            ),
            SmartButton(
              variant: variant,
              size: size,
              label: 'Outline (Disabled)',
              type: SmartButtonType.outline,
            ),
            Gap(
              SmartDimension.size8.h,
            ),
            SmartButton(
              variant: variant,
              size: size,
              label: 'Ghost',
              type: SmartButtonType.ghost,
              onPressed: () async {},
            ),
            Gap(
              SmartDimension.size8.h,
            ),
            SmartButton(
              variant: variant,
              size: size,
              label: 'Ghost (Leading)',
              type: SmartButtonType.ghost,
              onPressed: () async {},
              leading: Icon(
                Icons.wallet,
                size: (size.data.textStyle.fontSize ?? 0) + 6.sp,
              ),
            ),
            Gap(
              SmartDimension.size8.h,
            ),
            SmartButton(
              variant: variant,
              size: size,
              label: 'Ghost (Trailing)',
              type: SmartButtonType.ghost,
              onPressed: () async {},
              trailing: Icon(
                Icons.calendar_month_rounded,
                size: (size.data.textStyle.fontSize ?? 0) + 6.sp,
              ),
            ),
            Gap(
              SmartDimension.size8.h,
            ),
            SmartButton(
              variant: variant,
              size: size,
              label: 'Ghost (Trailing & Leading)',
              onPressed: () async {},
              type: SmartButtonType.ghost,
              trailing: Icon(
                Icons.arrow_upward_rounded,
                size: (size.data.textStyle.fontSize ?? 0) + 6.sp,
              ),
              leading: Icon(
                Icons.arrow_downward_rounded,
                size: (size.data.textStyle.fontSize ?? 0) + 6.sp,
              ),
            ),
            Gap(
              SmartDimension.size8.h,
            ),
            SmartButton(
              variant: variant,
              size: size,
              label: 'Ghost (Disabled)',
              type: SmartButtonType.ghost,
            ),
          ],
        ),
      );
}
