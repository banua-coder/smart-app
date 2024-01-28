import 'package:dependencies/dependencies.dart';
import 'package:flutter/material.dart';
import 'package:smart_ui_kit/smart_ui_kit.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 120,
        leading: SmartAsset.logo(
          logo: SmartLogo.logo,
          width: 120.w,
          height: 120.h,
          fit: BoxFit.cover,
        ),
      ),
      body: const Center(
        child: Text('Hello World!'),
      ),
    );
  }
}
