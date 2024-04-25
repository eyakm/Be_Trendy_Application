import 'package:flutter/material.dart';

import 'curved_edges.dart';
class BTCurvedEdgeWidget extends StatelessWidget {
  const BTCurvedEdgeWidget({
    super.key, this.child,
  });

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: BTCustomCurvedEdges(),
      child: child,
    );
  }
}