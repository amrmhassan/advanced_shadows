// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

import 'inner_shadows.dart';
import 'outer_shadows.dart';

class AdvancedShadow extends StatefulWidget {
  final List<BoxShadow> innerShadows;
  final List<BoxShadow> outerShadows;
  final Widget child;

  const AdvancedShadow({
    super.key,
    required this.innerShadows,
    required this.outerShadows,
    required this.child,
  });

  @override
  State<AdvancedShadow> createState() => _AdvancedShadowState();
}

class _AdvancedShadowState extends State<AdvancedShadow> {
  GlobalKey globalKey = GlobalKey();
  Size size = Size.zero;
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      updateWidgetSize();
    });

    super.initState();
  }

  @override
  void didUpdateWidget(covariant AdvancedShadow oldWidget) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      updateWidgetSize();
    });

    super.didUpdateWidget(oldWidget);
  }

  void updateWidgetSize() {
    late Size s;
    try {
      s = globalKey.currentContext!.size as Size;
    } catch (E) {
      s = Size.zero;
    }
    setState(() {
      size = s;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        if (size.height != 0 && size.width != 0)
          OuterShadowsContainer(size: size, widget: widget),
        InnerShadow(
          shadows: widget.innerShadows,
          child: Container(
            key: globalKey,
            child: widget.child,
          ),
        ),
      ],
    );
  }
}
