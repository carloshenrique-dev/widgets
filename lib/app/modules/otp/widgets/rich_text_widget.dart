import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:widgets/app/core/ui/themes/app_text_style.dart';

class RichTextWidget extends StatelessWidget {
  final VoidCallback voidCallback;
  final TextStyle? titleStyle;
  final TextStyle? linkStyle;
  final String title;
  final String link;

  const RichTextWidget({
    super.key,
    required this.voidCallback,
    required this.title,
    required this.link,
    this.titleStyle,
    this.linkStyle,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        text: title,
        style: titleStyle ?? AppTextStyle.commonText,
        children: [
          TextSpan(
            text: link,
            style: linkStyle ?? AppTextStyle.textLink,
            recognizer: TapGestureRecognizer()..onTap = voidCallback,
          ),
        ],
      ),
    );
  }
}
