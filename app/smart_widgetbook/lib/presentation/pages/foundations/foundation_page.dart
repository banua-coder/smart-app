import 'package:flutter/material.dart';
import 'package:smart_ui_kit/smart_ui_kit.dart';
import 'package:smart_widgetbook/presentation/pages/base_element_page.dart';
import 'package:smart_widgetbook/presentation/pages/foundations/foundations.dart';
import 'package:smart_widgetbook/translations/translations.g.dart';

class FoundationPage extends StatelessWidget {
  const FoundationPage({super.key});

  @override
  Widget build(BuildContext context) => BaseElementPage(
        title: '🔸 ${context.translation.foundation.title}',
        children: [
          SmartTextBodySm(
            context.translation.foundation.description,
          ),
          SectionButton(
            name: context.translation.foundation.children.borderRadius.title,
            page: const BorderRadiusPage(),
          ),
          SectionButton(
            name: context.translation.foundation.children.dimension.title,
            page: const DimensionPage(),
          ),
          SectionButton(
            name: context.translation.foundation.children.color.title,
            page: const ColorPage(),
          ),
          SectionButton(
            name: context.translation.foundation.children.shadow.title,
            page: const ShadowPage(),
          ),
        ],
      );
}
