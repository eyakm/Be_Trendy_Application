import 'package:be_trendy/common/widgets/appbar/appbar.dart';
import 'package:be_trendy/common/widgets/images/BT_circular_image.dart';
import 'package:be_trendy/common/widgets/texts/section_heading.dart';
import 'package:be_trendy/features/personalization/screens/profile/widgets/profile_menu.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: const BTAppBar(
        showBackArrow: true,
        title: Text("Profile"),
      ),
      //Body
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(BTSizes.defaultSpace),
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    const BTCircularImage(image: BTImages.user, width: 80, height: 80),
                    TextButton(onPressed: (){}, child: const Text("Change Profile Picture"))
                  ],
                ),
              ),


          //Details
              const SizedBox(height: BTSizes.spaceBtwItems /2),
              const Divider(),
              const SizedBox(height: BTSizes.spaceBtwItems),

              //Heading Profile Info
              const BTSectionHeading(title: 'Profile Information',showActionButton: false),
              const SizedBox(height: BTSizes.spaceBtwItems),


              BTProfileMenu(title: "Name",value: "Eya ",onPressed: () {}),
              BTProfileMenu(title: "Username",value: "eya ",onPressed: () {}),


              const SizedBox(height: BTSizes.spaceBtwItems),
              const Divider(),
              const SizedBox(height: BTSizes.spaceBtwItems),

              //Heading Personal Info
              const BTSectionHeading(title: 'Personal Information',showActionButton: false),
              const SizedBox(height: BTSizes.spaceBtwItems),


              BTProfileMenu(title: "User Id",value: "15263 ",icon: Iconsax.copy,onPressed: () {}),
              BTProfileMenu(title: "E-mail",value: "eyakammoun20@gmail.com ",onPressed: () {}),
              BTProfileMenu(title: "Phone Number",value: "+216 22-556-485 ",onPressed: () {}),
              BTProfileMenu(title: "Gender",value: "Female ",onPressed: () {}),
              BTProfileMenu(title: "Date of Birth",value: "24 Nov, 2001 ",onPressed: () {}),

              const Divider(),
              const SizedBox(height: BTSizes.spaceBtwItems),
              
              Center(
                child: TextButton(
                  onPressed: (){},
                  child: const Text("Close Account", style: TextStyle(color: Colors.red)),
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}

