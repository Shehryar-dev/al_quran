import 'package:al_quran/presentation/common/widgets/curved_header/bottom_curved_edge_widget.dart';
import 'package:al_quran/presentation/common/widgets/curved_header/circular_shape_container.dart';
import 'package:flutter/material.dart';

import '../../../../core/resources/constants/screen_path.dart';

class HomePrimaryHeaderWidget extends StatelessWidget {
  final Widget child;
  const HomePrimaryHeaderWidget({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return HomeCurvedEdgeWidget(
      child: Container(
        decoration:BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,

            colors: [ AppColors.appPurpleDark,    AppColors.primary, ],
          ),

        ),
        padding: const EdgeInsets.all(0),
        child: Stack(
          //380 height SizeBox
          children: [
            const Positioned(
                top: -150,
                right: -250,
                child: HeaderCircularContainer()),
            const Positioned(
                top: 150,
                left: -300,
                child: HeaderCircularContainer()),

            const Positioned(
                top: 100,
                right: -300,
                child: HeaderCircularContainer()),

            child
          ],
        ),
      ),
    );
  }
}
