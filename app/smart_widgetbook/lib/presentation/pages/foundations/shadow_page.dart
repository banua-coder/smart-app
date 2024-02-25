import 'package:flutter/material.dart';
import 'package:flutter_syntax_view/flutter_syntax_view.dart';
import 'package:smart_ui_kit/smart_ui_kit.dart';
import 'package:smart_widgetbook/smart_widgetbook.dart';
import 'package:smart_widgetbook/translations/translations.g.dart';

class ShadowPage extends StatefulWidget {
  const ShadowPage({super.key});

  @override
  State<ShadowPage> createState() => _ShadowPageState();
}

class _ShadowPageState extends State<ShadowPage> {
  late final ValueNotifier<String> _selectedShadowNotifier;

  @override
  void initState() {
    super.initState();
    _selectedShadowNotifier = ValueNotifier('card');
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
          context.translation.foundation.children.shadow.title,
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
                  context.translation.foundation.children.shadow.description,
                ),
                Gap(SmartDimension.size16.h),
                ValueListenableBuilder(
                  valueListenable: _selectedShadowNotifier,
                  builder: (_, value, __) => CodeSnippetWidget(
                    code: '''

Container(
  decoration: BoxDecoration(
    boxShadow: context.smartShadow.$value,
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
                    _ShadowItem(
                      name: 'card',
                      shadows: context.smartShadow.card,
                      isSelected: value == 'card',
                      onSelected: (value) =>
                          _selectedShadowNotifier.value = value,
                    ),
                    _ShadowItem(
                      name: 'header',
                      shadows: context.smartShadow.header,
                      isSelected: value == 'header',
                      onSelected: (value) =>
                          _selectedShadowNotifier.value = value,
                    ),
                    _ShadowItem(
                      name: 'footer',
                      shadows: context.smartShadow.footer,
                      isSelected: value == 'footer',
                      onSelected: (value) =>
                          _selectedShadowNotifier.value = value,
                    ),
                    _ShadowItem(
                      name: 'modal',
                      shadows: context.smartShadow.modal,
                      isSelected: value == 'modal',
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

class _ShadowItem extends StatelessWidget {
  const _ShadowItem({
    required this.name,
    required this.shadows,
    this.isSelected = false,
    this.onSelected,
  });

  final String name;
  final bool isSelected;
  final List<BoxShadow> shadows;
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
          borderRadius: BorderRadius.circular(SmartBorderRadius.md),
          border: Border.all(
            color: context.smartColor.outline.neutral.main,
          ),
          boxShadow: shadows,
        ),
        child: Material(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(SmartBorderRadius.md),
          child: InkWell(
            borderRadius: BorderRadius.circular(SmartBorderRadius.md),
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
