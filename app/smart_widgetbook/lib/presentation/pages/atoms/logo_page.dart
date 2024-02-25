import 'package:flutter/material.dart';
import 'package:flutter_syntax_view/flutter_syntax_view.dart';
import 'package:smart_ui_kit/smart_ui_kit.dart';
import 'package:smart_widgetbook/smart_widgetbook.dart';
import 'package:smart_widgetbook/translations/translations.g.dart';

class LogoPage extends StatefulWidget {
  const LogoPage({super.key});

  @override
  State<LogoPage> createState() => _LogoPageState();
}

class _LogoPageState extends State<LogoPage> {
  late final ValueNotifier<SmartLogo> _selectedLogoNotifier;

  @override
  void initState() {
    super.initState();
    _selectedLogoNotifier = ValueNotifier(SmartLogo.values.first);
  }

  @override
  void dispose() {
    _selectedLogoNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.translation.atom.childrens.logo.title),
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
                  context.translation.atom.childrens.button.description,
                ),
                Gap(SmartDimension.size16.h),
                ValueListenableBuilder(
                  valueListenable: _selectedLogoNotifier,
                  builder: (_, value, __) => CodeSnippetWidget(
                    code: '''

/// To use logo.
SmartAsset.logo(
  logo: $value,
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
            child: ValueListenableBuilder(
              valueListenable: _selectedLogoNotifier,
              builder: (_, value, __) => StaggeredGrid.count(
                crossAxisCount: 2,
                crossAxisSpacing: SmartDimension.size16.w,
                mainAxisSpacing: SmartDimension.size16.h,
                children: List.generate(
                  SmartLogo.values.length,
                  (index) => SmartCard(
                    onTap: () =>
                        _selectedLogoNotifier.value = SmartLogo.values[index],
                    width: 140.w,
                    bgColor: value == SmartLogo.values[index]
                        ? context.smartColor.background.subtle.info
                        : context.smartColor.background.card.main,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SmartAsset.logo(
                          width: 100.w,
                          height: 100.h,
                          logo: SmartLogo.values[index],
                          fit: BoxFit.contain,
                        ),
                        SmartTextBodyXs(
                          SmartLogo.values[index].name,
                          textAlign: TextAlign.center,
                        ),
                      ],
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
