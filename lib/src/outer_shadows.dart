import 'package:flutter/material.dart';

import '../advanced_shadows.dart';

class OuterShadowsContainer extends StatelessWidget {
  const OuterShadowsContainer({
    super.key,
    required this.size,
    required this.widget,
  });

  final Size size;
  final AdvancedShadow widget;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      height: size.height,
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(1000),
        boxShadow: widget.outerShadows,
      ),
    );
  }
}
