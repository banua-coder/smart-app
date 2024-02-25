import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:i10n/i10n.dart';
import 'package:smart_ui_kit/smart_ui_kit.dart';

class ErrorApp extends StatelessWidget {
  const ErrorApp({super.key});

  @override
  Widget build(BuildContext context) => SmartComponentInit(
        builder: (_) => MaterialApp(
          title: 'SmaRT',
          debugShowCheckedModeBanner: false,
          theme: SmartTheme.light(ThemeData.light()).themeData,
          darkTheme: SmartTheme.dark(ThemeData.dark()).themeData,
          locale: LocaleSettings.currentLocale.flutterLocale,
          supportedLocales: AppLocaleUtils.supportedLocales,
          localizationsDelegates: GlobalMaterialLocalizations.delegates,
          home: Scaffold(
            body: Center(
              child: Stack(
                children: [
                  Align(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SmartAsset.animation(
                          animation: SmartAnimations.maintenance,
                          width: 0.5.sw,
                          fit: BoxFit.cover,
                        ),
                        Gap(SmartDimension.size16.h),
                        SmartTextHeadingXs(
                          context.i10n.errors.somethingWrong.description,
                          textAlign: TextAlign.center,
                        ),
                        Gap(SmartDimension.size8.h),
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: SmartDimension.size64.w,
                          ),
                          child: SmartTextBodySm(
                            context.i10n.errors.somethingWrong.description,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SmartAsset.logo(
                          logo: SmartLogo.smart,
                          width: 100,
                          fit: BoxFit.contain,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SmartTextBodySm(
                              getIt<PackageInfoUtil>().appName(),
                            ),
                            const Text(
                              ' - ',
                            ),
                            SmartTextBodySm(
                              'v${getIt<PackageInfoUtil>().version()}',
                              fontWeight: FontWeight.w700,
                            ),
                          ],
                        ),
                        Gap(SmartDimension.size32.h),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
}
