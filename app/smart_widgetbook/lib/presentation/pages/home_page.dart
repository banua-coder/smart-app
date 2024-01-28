import 'package:flutter/material.dart';

import 'package:smart_ui_kit/smart_ui_kit.dart';
import 'package:smart_widgetbook/presentation/pages/button_page.dart';
import 'package:smart_widgetbook/presentation/pages/logo_page.dart';
import 'package:smart_widgetbook/smart_widgetbook.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Smart UI Kit'),
        actions: const [
          ThemeSwitcherButton(),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.only(
          top: 16.h,
          left: 20.w,
          right: 20.w,
          bottom: 32.h,
        ),
        shrinkWrap: true,
        children: const [
          _SectionTitle(
            title: 'Assets',
          ),
          _Button(
            name: 'Logo',
            page: LogoPage(),
          ),
          _SectionTitle(
            title: 'Core',
          ),
          _SectionTitle(
            title: 'Components',
          ),
          _Button(
            name: 'Button',
            page: ButtonPage(),
          ),
        ],
      ),
    );
  }
}

class _SectionTitle extends StatelessWidget {
  const _SectionTitle({required this.title});
  final String title;

  @override
  Widget build(BuildContext context) => Padding(
        padding: EdgeInsets.only(
          top: 30.h,
        ),
        child: Text(
          title,
          style: TextStyle(
            fontSize: 24.sp,
            fontWeight: FontWeight.w600,
          ),
          textAlign: TextAlign.start,
        ),
      );
}

class _Button extends StatelessWidget {
  const _Button({required this.name, required this.page});

  final String name;
  final Widget page;

  @override
  Widget build(BuildContext context) => Padding(
        padding: EdgeInsets.only(
          top: 16.h,
        ),
        child: SmartButton.primary(
          label: name,
          onPressed: () async {
            await Navigator.of(context).push(
              MaterialPageRoute<dynamic>(builder: (context) => page),
            );
          },
        ),
      );
}
