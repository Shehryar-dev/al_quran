import 'package:al_quran/core/resources/constants/screen_path.dart';
import 'package:flutter/material.dart';

class HeaderCircularContainer extends StatelessWidget {
  final double height, width, radius, padding, opacity;
  final Color bgColor;
  final Widget? child;
  final EdgeInsets? margin;
  const HeaderCircularContainer({
    super.key,
    this.height = 400,
    this.width = 400,
    this.radius = 400,
    this.padding = 0,
    this.margin,
    this.opacity = 0.1,
    this.bgColor = Colors.white,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: margin,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius), color: bgColor.withOpacity(opacity)),
      child: child,
    );
  }
}
