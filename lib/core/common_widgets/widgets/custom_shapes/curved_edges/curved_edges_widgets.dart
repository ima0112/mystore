import 'package:flutter/material.dart';
import 'package:mystore/core/common_widgets/widgets/custom_shapes/curved_edges/curved_edges.dart';

class MyCurvedEdgeWidget extends StatelessWidget {
  const MyCurvedEdgeWidget({
    super.key,
    this.child,
  });

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: MyCustomCurvedEdges(),
      child: child,
    );
  }
}
