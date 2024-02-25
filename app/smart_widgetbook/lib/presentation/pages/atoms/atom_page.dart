import 'package:flutter/material.dart';
import 'package:smart_ui_kit/smart_ui_kit.dart';
import 'package:smart_widgetbook/presentation/pages/atoms/atoms.dart';
import 'package:smart_widgetbook/presentation/pages/base_element_page.dart';
import 'package:smart_widgetbook/translations/translations.g.dart';

class AtomPage extends StatelessWidget {
  const AtomPage({super.key});

  @override
  Widget build(BuildContext context) => BaseElementPage(
        title: '⚛ ${context.translation.atom.title}',
        children: [
          SmartTextBodySm(
            context.translation.atom.description,
          ),
          SectionButton(
            name: context.translation.atom.childrens.animations.title,
            page: const AnimationPage(),
          ),
          SectionButton(
            name: context.translation.atom.childrens.button.title,
            page: const ButtonPage(),
          ),
          const SectionButton(
            name: 'Card',
            page: CardPage(),
          ),
          SectionButton(
            name: context.translation.atom.childrens.logo.title,
            page: const LogoPage(),
          ),
        ],
      );
}
