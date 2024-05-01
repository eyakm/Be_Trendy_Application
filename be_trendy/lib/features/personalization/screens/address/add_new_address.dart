import 'package:be_trendy/common/widgets/appbar/appbar.dart';
import 'package:be_trendy/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
class AddNewAddressScreen extends StatelessWidget {
  const AddNewAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: BTAppBar(showBackArrow: true,title: Text("Add new Address")),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(BTSizes.defaultSpace),
          child: Form(
              child: Column(
                children: [
                  TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Iconsax.user),labelText: "Name")),
                  const SizedBox(height: BTSizes.spaceBtwInputFields),

                  TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Iconsax.mobile),labelText: "Phone Number")),
                  const SizedBox(height: BTSizes.spaceBtwInputFields),
                  Row(
                    children: [
                      Expanded(child: TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Iconsax.building_31),labelText: "Street"))),
                      const SizedBox(width: BTSizes.spaceBtwInputFields),
                      Expanded(child: TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Iconsax.code),labelText: "Postal Code"))),

                    ],
                  ),
                  const SizedBox(height: BTSizes.spaceBtwInputFields),

                  Row(
                    children: [
                      Expanded(child: TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Iconsax.building),labelText: "City"))),
                      const SizedBox(width: BTSizes.spaceBtwInputFields),
                      Expanded(child: TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Iconsax.activity),labelText: "State"))),

                    ],
                  ),
                  const SizedBox(height: BTSizes.spaceBtwInputFields),
                  TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Iconsax.global),labelText: "Country")),
                  const SizedBox(height: BTSizes.defaultSpace),
                  SizedBox(width: double.infinity,child: ElevatedButton(onPressed: (){}, child: Text("Save")),)
                ],
              )
          ),
        ),
      ),
    );
  }
}
