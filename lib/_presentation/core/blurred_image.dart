import 'dart:ui';

import 'package:flutter/material.dart';

class BlurredImage extends StatelessWidget {
  final String url;
  final bool blurred;

  const BlurredImage({
    Key? key,
    required this.url,
    required this.blurred,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: ImageFiltered(
        imageFilter: blurred
            ? ImageFilter.blur(sigmaX: 5, sigmaY: 5)
            : ImageFilter.blur(),
        child: Image.network(url),
      ),
    );
  }
}
