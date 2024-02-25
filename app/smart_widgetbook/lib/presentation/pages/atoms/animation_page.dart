import 'package:flutter/material.dart';
import 'package:flutter_syntax_view/flutter_syntax_view.dart';
import 'package:smart_ui_kit/smart_ui_kit.dart';
import 'package:smart_widgetbook/smart_widgetbook.dart';
import 'package:smart_widgetbook/translations/translations.g.dart';

class AnimationPage extends StatefulWidget {
  const AnimationPage({super.key});

  @override
  State<AnimationPage> createState() => _AnimationPageState();
}

class _AnimationPageState extends State<AnimationPage> {
  late final ValueNotifier<SmartAnimations> _selectedAnimationNotifier;

  @override
  void initState() {
    super.initState();
    _selectedAnimationNotifier = ValueNotifier(SmartAnimations.values.first);
  }

  @override
  void dispose() {
    _selectedAnimationNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.translation.atom.childrens.animations.title),
        actions: const [
          ThemeSwitcherButton(),
        ],
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
                  context.translation.atom.childrens.animations.description,
                ),
                Gap(SmartDimension.size16.h),
                ValueListenableBuilder(
                  valueListenable: _selectedAnimationNotifier,
                  builder: (_, value, __) => CodeSnippetWidget(
                    code: '''

/// To use animation.
SmartAsset.animation(
    animation: $value,
);
          
                        ''',
                    syntax: Syntax.DART,
                  ),
                ),
              ],
            ),
          ),
          const Divider(),
          SingleChildScrollView(
            padding: EdgeInsets.all(SmartDimension.size16.r),
            child: StaggeredGrid.count(
              crossAxisCount: 2,
              crossAxisSpacing: SmartDimension.size16.w,
              mainAxisSpacing: SmartDimension.size16.h,
              children: List.generate(
                SmartAnimations.values.length,
                (index) => InkWell(
                  onTap: () => _selectedAnimationNotifier.value =
                      SmartAnimations.values[index],
                  borderRadius: BorderRadius.circular(SmartBorderRadius.md),
                  child: ValueListenableBuilder(
                    valueListenable: _selectedAnimationNotifier,
                    builder: (_, value, __) => AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      width: 140.w,
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(SmartBorderRadius.md),
                        border: Border.all(
                          color: context.smartColor.outline.neutral.main,
                        ),
                        color: value == SmartAnimations.values[index]
                            ? context.smartColor.background.subtle.info
                            : context.smartColor.background.card.main,
                      ),
                      padding: EdgeInsets.all(SmartDimension.size16.r),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SmartAsset.animation(
                            width: 100.w,
                            height: 100.h,
                            animation: SmartAnimations.values[index],
                            fit: BoxFit.contain,
                          ),
                          Gap(SmartDimension.size8.h),
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: SmartDimension.size16.w,
                            ),
                            child: SmartTextBodyXs(
                              SmartAnimations.values[index].name,
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
