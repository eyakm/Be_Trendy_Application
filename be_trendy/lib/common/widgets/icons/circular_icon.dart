import 'package:be_trendy/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/helpers/helper_functions.dart';

class BTCircularIcon extends StatelessWidget {
  // this is a custom circular icon widget with background color
  // properties: container [width, height, backgroundColor] , Icon's [size, height, onPressed]
  const BTCircularIcon({
    super.key,
    //required this.dark,
    this.width,
    this.height,
    this.size = BTSizes.lg,
    required this.icon,
    this.color,
    this.backgroundColor,
    this.onPressed,
  });

  //final bool dark;
  final double? width, height, size;
  final IconData icon;
  final Color? color;
  final Color? backgroundColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: backgroundColor != null
            ? backgroundColor!
            : BTHelperFunctions.isDarkMode(context)
                ? BTColors.black.withOpacity(8.9)
                : BTColors.white.withOpacity(0.9),
      ),
      child: IconButton(
          onPressed: onPressed, icon: Icon(icon, color: color, size: size)),
    );
  }
}
