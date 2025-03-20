import 'package:al_quran/presentation/common/widgets/curved_header/clipper_edges.dart';
import 'package:flutter/material.dart';

class HomeCurvedEdgeWidget extends StatelessWidget {
  final Widget child;
  const HomeCurvedEdgeWidget({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: CustomClipperEdges(),
      child: child,
    );
    // return ClipRRect(
    //   borderRadius: BorderRadius.vertical(bottom: Radius.circular(15)),
    // child: child,
    // );
  }
}
