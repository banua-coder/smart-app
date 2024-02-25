import 'package:flutter/material.dart';
import 'package:flutter_syntax_view/flutter_syntax_view.dart';
import 'package:smart_ui_kit/smart_ui_kit.dart';
import 'package:smart_widgetbook/smart_widgetbook.dart';
import 'package:smart_widgetbook/translations/translations.g.dart';

class DimensionPage extends StatefulWidget {
  const DimensionPage({super.key});

  @override
  State<DimensionPage> createState() => _DimensionPageState();
}

class _DimensionPageState extends State<DimensionPage> {
  late final ValueNotifier<String> _selectedDimensionNotifier;

  @override
  void initState() {
    super.initState();
    _selectedDimensionNotifier = ValueNotifier('size2');
  }

  @override
  void dispose() {
    _selectedDimensionNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          context.translation.foundation.children.dimension.title,
        ),
        actions: const [ThemeSwitcherButton()],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(SmartDimension.size16.r),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SmartTextBodySm(
                  context.translation.foundation.children.dimension.description,
                ),
                Gap(SmartDimension.size16.h),
                ValueListenableBuilder(
                  valueListenable: _selectedDimensionNotifier,
                  builder: (_, value, __) => CodeSnippetWidget(
                    code: '''

Container(
  width: SmartDimension.$value.w,
  height: SmartDimension.$value.h,
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(
      SmartBorderRadius.sm,
    ),
  ),
)
                  ''',
                    syntax: Syntax.DART,
                  ),
                ),
              ],
            ),
          ),
          const Divider(),
          Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.all(SmartDimension.size16.r),
              child: ValueListenableBuilder(
                valueListenable: _selectedDimensionNotifier,
                builder: (_, value, __) => StaggeredGrid.count(
                  crossAxisCount: 4,
                  mainAxisSpacing: SmartDimension.size16.w,
                  crossAxisSpacing: SmartDimension.size16.h,
                  children: [
                    _DimensionItem(
                      name: 'size2',
                      size: SmartDimension.size2,
                      isSelected: value == 'size2',
                      onSelected: (value) =>
                          _selectedDimensionNotifier.value = value,
                    ),
                    _DimensionItem(
                      name: 'size4',
                      size: SmartDimension.size4,
                      isSelected: value == 'size4',
                      onSelected: (value) =>
                          _selectedDimensionNotifier.value = value,
                    ),
                    _DimensionItem(
                      name: 'size8',
                      size: SmartDimension.size8,
                      isSelected: value == 'size8',
                      onSelected: (value) =>
                          _selectedDimensionNotifier.value = value,
                    ),
                    _DimensionItem(
                      name: 'size12',
                      size: SmartDimension.size12,
                      isSelected: value == 'size12',
                      onSelected: (value) =>
                          _selectedDimensionNotifier.value = value,
                    ),
                    _DimensionItem(
                      name: 'size16',
                      size: SmartDimension.size16,
                      isSelected: value == 'size16',
                      onSelected: (value) =>
                          _selectedDimensionNotifier.value = value,
                    ),
                    _DimensionItem(
                      name: 'size20',
                      size: SmartDimension.size20,
                      isSelected: value == 'size20',
                      onSelected: (value) =>
                          _selectedDimensionNotifier.value = value,
                    ),
                    _DimensionItem(
                      name: 'size24',
                      size: SmartDimension.size24,
                      isSelected: value == 'size24',
                      onSelected: (value) =>
                          _selectedDimensionNotifier.value = value,
                    ),
                    _DimensionItem(
                      name: 'size28',
                      size: SmartDimension.size28,
                      isSelected: value == 'size28',
                      onSelected: (value) =>
                          _selectedDimensionNotifier.value = value,
                    ),
                    _DimensionItem(
                      name: 'size32',
                      size: SmartDimension.size32,
                      isSelected: value == 'size32',
                      onSelected: (value) =>
                          _selectedDimensionNotifier.value = value,
                    ),
                    _DimensionItem(
                      name: 'size36',
                      size: SmartDimension.size36,
                      isSelected: value == 'size36',
                      onSelected: (value) =>
                          _selectedDimensionNotifier.value = value,
                    ),
                    _DimensionItem(
                      name: 'size40',
                      size: SmartDimension.size40,
                      isSelected: value == 'size40',
                      onSelected: (value) =>
                          _selectedDimensionNotifier.value = value,
                    ),
                    _DimensionItem(
                      name: 'size48',
                      size: SmartDimension.size48,
                      isSelected: value == 'size48',
                      onSelected: (value) =>
                          _selectedDimensionNotifier.value = value,
                    ),
                    _DimensionItem(
                      name: 'size52',
                      size: SmartDimension.size52,
                      isSelected: value == 'size52',
                      onSelected: (value) =>
                          _selectedDimensionNotifier.value = value,
                    ),
                    _DimensionItem(
                      name: 'size56',
                      size: SmartDimension.size56,
                      isSelected: value == 'size56',
                      onSelected: (value) =>
                          _selectedDimensionNotifier.value = value,
                    ),
                    _DimensionItem(
                      name: 'size64',
                      size: SmartDimension.size64,
                      isSelected: value == 'size64',
                      onSelected: (value) =>
                          _selectedDimensionNotifier.value = value,
                    ),
                    _DimensionItem(
                      name: 'size72',
                      size: SmartDimension.size72,
                      isSelected: value == 'size72',
                      onSelected: (value) =>
                          _selectedDimensionNotifier.value = value,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _DimensionItem extends StatelessWidget {
  const _DimensionItem({
    required this.name,
    required this.size,
    this.isSelected = false,
    this.onSelected,
  });

  final String name;
  final bool isSelected;
  final double size;
  final void Function(String value)? onSelected;

  @override
  Widget build(BuildContext context) => AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        height: 120,
        decoration: BoxDecoration(
          color: isSelected
              ? context.smartColor.background.subtle.info
              : context.smartColor.background.card.main,
          borderRadius: BorderRadius.circular(SmartBorderRadius.sm),
          border: Border.all(
            color: context.smartColor.outline.neutral.main,
          ),
          boxShadow: context.smartShadow.card,
        ),
        child: Material(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(SmartBorderRadius.sm),
          child: InkWell(
            borderRadius: BorderRadius.circular(SmartBorderRadius.sm),
            onTap: onSelected == null
                ? null
                : () {
                    onSelected!.call(name);
                  },
            child: Padding(
              padding: EdgeInsets.all(SmartDimension.size8.r),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: size.w,
                      height: size.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          size < 20 ? 2.r : SmartBorderRadius.xs,
                        ),
                        color: context.smartColor.background.neutral.inverse,
                      ),
                    ),
                    Gap(SmartDimension.size4.h),
                    SmartTextBodySm(name),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
}
