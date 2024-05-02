import 'package:be_trendy/utils/constants/colors.dart';
import 'package:be_trendy/utils/constants/sizes.dart';
import 'package:be_trendy/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../common/widgets/custom_shapes/containers/rounded_container.dart';
class BTSingleAddress extends StatelessWidget {
  const BTSingleAddress({super.key, required this.selectedAddress});


  final bool selectedAddress;
  @override
  Widget build(BuildContext context) {
    final dark = BTHelperFunctions.isDarkMode(context);
    return BTRoundedContainer(
      padding: const EdgeInsets.all(BTSizes.md),
      width: double.infinity,
      showBorder: true,
      backgroundColor: selectedAddress ? BTColors.primary.withOpacity(0.5) : Colors.transparent ,
      borderColor: selectedAddress ? Colors.transparent : dark ? BTColors.darkerGrey : BTColors.grey,
      margin: const EdgeInsets.only(bottom: BTSizes.spaceBtwItems),
      child: Stack(
        children: [
          Positioned(
              right: 5,
              top: 0,
              child: Icon(selectedAddress ? Iconsax.tick_circle5 : null,
                  color: selectedAddress
                      ? dark
                          ? BTColors.light
                          : BTColors.dark.withOpacity(0.5)
                      : null
              )
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "John Doe",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: BTSizes.sm / 2),
              const Text("(+216) 22 556 589", maxLines: 1, overflow: TextOverflow.ellipsis),
              const SizedBox(height: BTSizes.sm / 2),
              const Text(" Rte de Mahdia KM 0.5 EL Bousten iset sfax, sfax" , softWrap: true),

            ],
          )
        ],
      ),
    );
  }
}
