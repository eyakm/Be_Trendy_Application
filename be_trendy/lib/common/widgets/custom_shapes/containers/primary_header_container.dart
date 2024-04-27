import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import '../curved_edges/curved_edges_widget.dart';
import 'circular_container.dart';

class BTPrimaryHeaderContainer extends StatelessWidget {
  const BTPrimaryHeaderContainer({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return BTCurvedEdgeWidget(

        //padding: const EdgeInsets.all(0),
        child: Container(
          color: BTColors.primaryColor,
          child: Stack(
        // to stack widgets vertically on top of each others
            children: [
              Positioned(
                  top: -150,
                  right: -250,
                  child: BTCircularContainer(
                      backgroundColor: BTColors.textWhite.withOpacity(0.1))),
              Positioned(
                  top: -100,
                  right: -300,
                  child: BTCircularContainer(
                      backgroundColor: BTColors.textWhite.withOpacity(0.1))),
              child,
            ],
                ),
              ));
  }
}
