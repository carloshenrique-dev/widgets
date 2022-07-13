import 'package:flutter/material.dart';

class TopImage extends StatelessWidget {
  final String url;
  const TopImage({required this.url, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 40),
        Image(image: AssetImage(url)),
        const SizedBox(height: 40),
      ],
    );
  }
}
