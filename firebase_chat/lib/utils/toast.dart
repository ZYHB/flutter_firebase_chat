import 'dart:math';

import 'package:flutter/material.dart';
import 'package:oktoast/oktoast.dart';

void okToast(String text) {
  showToast(
    text,
    position: ToastPosition.bottom,
    backgroundColor: Colors.black.withOpacity(0.8),
    radius: 13.0,
    textStyle: const TextStyle(fontSize: 18.0),
    animationBuilder: const Miui10AnimBuilder(),
  );
}

void errorToast(String text) {
  showToast(
    text,
    position: ToastPosition.bottom,
    backgroundColor: Colors.red,
    textStyle: const TextStyle(fontSize: 18.0, color: Colors.white),
  );
}

class Miui10AnimBuilder extends BaseAnimationBuilder {
  const Miui10AnimBuilder();

  @Deprecated('Please build animation builders outside the package')
  @override
  Widget buildWidget(
    BuildContext context,
    Widget child,
    AnimationController controller,
    double percent,
  ) {
    final double opacity = min(1.0, percent + 0.2);
    final double offset = (1 - percent) * 20;

    return Opacity(
      opacity: opacity,
      child: Transform.translate(offset: Offset(0, offset), child: child),
    );
  }
}
