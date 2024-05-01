import 'package:be_trendy/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:be_trendy/common/widgets/texts/section_heading.dart';
import 'package:be_trendy/utils/constants/image_strings.dart';
import 'package:be_trendy/utils/constants/sizes.dart';
import 'package:be_trendy/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/constants/colors.dart';
 class BTBillingAddressSection extends StatelessWidget {
   const BTBillingAddressSection({super.key});
 
   @override
   Widget build(BuildContext context) {
     return  Column(
       crossAxisAlignment: CrossAxisAlignment.start,
       children: [
         BTSectionHeading(title: " Shipping Address", buttonTitle: "Change", onPressed: (){}),
         Text("ISET sfax", style: Theme.of(context).textTheme.bodyLarge),
         const SizedBox(width: BTSizes.spaceBtwItems / 2),


         Row(
           children: [
             const Icon(Icons.phone, color: Colors.grey, size: 16),
             const SizedBox(width: BTSizes.spaceBtwItems),
             Text("(+216) 22 566 598", style: Theme.of(context).textTheme.bodyMedium),

           ],
         ),
         const SizedBox(width: BTSizes.spaceBtwItems / 2),

         Row(
           children: [
             const Icon(Icons.location_history, color: Colors.grey, size: 16),
             const SizedBox(width: BTSizes.spaceBtwItems),
             Expanded(child: Text(" Rte Mahdia Km 0.5 , sfax", style: Theme.of(context).textTheme.bodyMedium, softWrap: true)),

           ],
         ),

       ],
     );
   }
 }
 