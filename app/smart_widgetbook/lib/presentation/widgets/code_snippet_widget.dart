import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_syntax_view/flutter_syntax_view.dart';
import 'package:smart_ui_kit/smart_ui_kit.dart';

class CodeSnippetWidget extends StatelessWidget {
  const CodeSnippetWidget({
    required this.code,
    required this.syntax,
    super.key,
  });

  final String code;
  final Syntax syntax;

  @override
  Widget build(BuildContext context) => Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(SmartBorderRadius.sm),
            child: SyntaxView(
              code: code,
              syntax: syntax,
              fontSize: 12.sp,
              withZoom: false,
              syntaxTheme: context.isDarkTheme
                  ? SyntaxTheme.vscodeDark()
                  : SyntaxTheme.vscodeLight(),
            ),
          ),
          Positioned(
            top: -12.h,
            right: -8.0,
            child: IconButton(
              onPressed: () => Clipboard.setData(
                ClipboardData(
                  text: code,
                ),
              ),
              icon: Icon(
                Icons.copy_rounded,
                size: 16.sp,
                color: context.smartColor.icon.neutral.subtle,
              ),
            ),
          ),
        ],
      );
}
