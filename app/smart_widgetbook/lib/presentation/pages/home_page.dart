import 'package:flutter/material.dart';
import 'package:flutter_syntax_view/flutter_syntax_view.dart';

import 'package:smart_ui_kit/smart_ui_kit.dart';
import 'package:smart_widgetbook/gen/assets.gen.dart';
import 'package:smart_widgetbook/presentation/pages/atoms/atom_page.dart';
import 'package:smart_widgetbook/presentation/pages/foundations/foundations.dart';

import 'package:smart_widgetbook/smart_widgetbook.dart';
import 'package:smart_widgetbook/translations/translations.g.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: SmartAsset.logo(
          logo: SmartLogo.smart,
          fit: BoxFit.cover,
          width: 120.w,
        ),
        actions: const [
          ThemeSwitcherButton(),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(
              SmartDimension.size16.r,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SmartTextHeadingXl(context.translation.general.showcase),
                Gap(SmartDimension.size16.h),
                SmartTextBody(
                  context.translation.general.description,
                ),
                Gap(SmartDimension.size16.h),
                const CodeSnippetWidget(
                  code: '''
dependencies:
  smart_ui_kit:
    path: ../packages/smart_ui_kit
            ''',
                  syntax: Syntax.YAML,
                ),
              ],
            ),
          ),
          const Divider(),
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(SmartDimension.size16),
              child: StaggeredGrid.count(
                crossAxisCount: 2,
                crossAxisSpacing: SmartDimension.size16.w,
                mainAxisSpacing: SmartDimension.size16.h,
                children: [
                  _ComponentCard(
                    label: 'Foundations',
                    animation: Assets.animations.templates,
                    page: const FoundationPage(),
                  ),
                  _ComponentCard(
                    label: context.translation.atom.title,
                    animation: Assets.animations.atoms,
                    page: const AtomPage(),
                  ),
                  _ComponentCard(
                    label: 'Molecules',
                    animation: Assets.animations.molecules,
                    page: const AtomPage(),
                  ),
                  _ComponentCard(
                    label: 'Organism',
                    animation: Assets.animations.organism,
                    page: const AtomPage(),
                  ),
                  _ComponentCard(
                    label: 'Templates',
                    animation: Assets.animations.tokens,
                    page: const AtomPage(),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _ComponentCard extends StatelessWidget {
  const _ComponentCard({
    required this.label,
    required this.animation,
    required this.page,
  });

  final String label;
  final Widget page;
  final LottieGenImage animation;

  @override
  Widget build(BuildContext context) => SmartCard(
        onTap: () => Navigator.of(context).push(
          MaterialPageRoute<dynamic>(
            builder: (context) => page,
          ),
        ),
        child: Column(
          children: [
            animation.lottie(),
            Gap(SmartDimension.size8.h),
            SmartTextHeadingXs(
              label,
            ),
          ],
        ),
      );
}
