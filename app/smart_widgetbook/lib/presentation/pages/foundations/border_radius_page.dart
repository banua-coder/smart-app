import 'package:flutter/material.dart';
import 'package:flutter_syntax_view/flutter_syntax_view.dart';
import 'package:smart_ui_kit/smart_ui_kit.dart';
import 'package:smart_widgetbook/smart_widgetbook.dart';
import 'package:smart_widgetbook/translations/translations.g.dart';

class BorderRadiusPage extends StatefulWidget {
  const BorderRadiusPage({super.key});

  @override
  State<BorderRadiusPage> createState() => _BorderRadiusPageState();
}

class _BorderRadiusPageState extends State<BorderRadiusPage> {
  late final ValueNotifier<String> _selectedShadowNotifier;

  @override
  void initState() {
    super.initState();
    _selectedShadowNotifier = ValueNotifier('xs');
  }

  @override
  void dispose() {
    _selectedShadowNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          context.translation.foundation.children.borderRadius.title,
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
                  context
                      .translation.foundation.children.borderRadius.description,
                ),
                Gap(SmartDimension.size16.h),
                ValueListenableBuilder(
                  valueListenable: _selectedShadowNotifier,
                  builder: (_, value, __) => CodeSnippetWidget(
                    code: '''

Container(
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(
      SmartBorderRadius.$value,
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
                valueListenable: _selectedShadowNotifier,
                builder: (_, value, __) => StaggeredGrid.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: SmartDimension.size16.w,
                  crossAxisSpacing: SmartDimension.size16.h,
                  children: [
                    _BorderRadiusItem(
                      name: 'xs',
                      radius: SmartBorderRadius.xs,
                      isSelected: value == 'xs',
                      onSelected: (value) =>
                          _selectedShadowNotifier.value = value,
                    ),
                    _BorderRadiusItem(
                      name: 'sm',
                      radius: SmartBorderRadius.sm,
                      isSelected: value == 'sm',
                      onSelected: (value) =>
                          _selectedShadowNotifier.value = value,
                    ),
                    _BorderRadiusItem(
                      name: 'md',
                      radius: SmartBorderRadius.md,
                      isSelected: value == 'md',
                      onSelected: (value) =>
                          _selectedShadowNotifier.value = value,
                    ),
                    _BorderRadiusItem(
                      name: 'lg',
                      radius: SmartBorderRadius.lg,
                      isSelected: value == 'lg',
                      onSelected: (value) =>
                          _selectedShadowNotifier.value = value,
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

class _BorderRadiusItem extends StatelessWidget {
  const _BorderRadiusItem({
    required this.name,
    required this.radius,
    this.isSelected = false,
    this.onSelected,
  });

  final String name;
  final bool isSelected;
  final double radius;
  final void Function(String value)? onSelected;

  @override
  Widget build(BuildContext context) => AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        width: 160.w,
        height: 160.h,
        decoration: BoxDecoration(
          color: isSelected
              ? context.smartColor.background.subtle.info
              : context.smartColor.background.card.main,
          borderRadius: BorderRadius.circular(radius),
          border: Border.all(
            color: context.smartColor.outline.neutral.main,
          ),
          boxShadow: context.smartShadow.card,
        ),
        child: Material(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(radius),
          child: InkWell(
            borderRadius: BorderRadius.circular(radius),
            onTap: onSelected == null
                ? null
                : () {
                    onSelected!.call(name);
                  },
            child: Center(
              child: SmartTextBody(name),
            ),
          ),
        ),
      );
}
