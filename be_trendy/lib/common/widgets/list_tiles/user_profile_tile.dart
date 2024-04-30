import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/image_strings.dart';
import '../images/BT_circular_image.dart';
class BTUserProfileTile extends StatelessWidget {
  const BTUserProfileTile({
    super.key, required this.onPressed,
  });
final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const BTCircularImage(
        image: BTImages.user,
        width: 50,
        height: 50,
        padding: 0,
      ),
      title:Text("Eya Kammoun", style: Theme.of(context).textTheme.headlineSmall!.apply(color: BTColors.white)),
      subtitle:Text("eyakammoun20@gmail.com", style: Theme.of(context).textTheme.bodyMedium!.apply(color: BTColors.white)),
      trailing: IconButton(onPressed: onPressed,icon: const Icon(Iconsax.edit,color: BTColors.white)),

    );
  }
}
