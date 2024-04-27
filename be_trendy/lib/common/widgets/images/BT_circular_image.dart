
import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_functions.dart';
class BTCircularImage extends StatelessWidget {
  const BTCircularImage({
    super.key,
    this.fit = BoxFit.cover,
    required this.image,
     this.isNetworkImage = false,
    this.overlayColor,
     this.backgroundColor,
     this.width = 56,
     this.height = 56 ,
     this.padding = BTSizes.sm,
  });


  final BoxFit? fit;
  final String image;
  final bool isNetworkImage;
  final Color? overlayColor;
  final Color? backgroundColor;
  final double width, height, padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding:  EdgeInsets.all(padding),
      decoration: BoxDecoration(
        color: BTHelperFunctions.isDarkMode(context) ? BTColors.black : BTColors.white,
        borderRadius: BorderRadius.circular(100),

      ),
      child: Center(
        child: Image(
          fit: fit,
          image: isNetworkImage ? NetworkImage(image) : AssetImage(image) as ImageProvider,  /*AssetImage(BTImages.clothIcon)*/
          color: overlayColor, //BTHelperFunctions.isDarkMode(context) ? BTColors.white : BTColors.dark
        ),
      ),
    );
  }
}