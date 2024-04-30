import 'package:be_trendy/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:be_trendy/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import '../../../utils/constants/colors.dart';

class BTChoiceClip extends StatelessWidget {
  const BTChoiceClip({
    super.key,
    required this.text,
    required this.selected,
    this.onSelected,
  });

  final String text;
  final bool selected;
  final void Function(bool)? onSelected;
  @override
  Widget build(BuildContext context) {
    final isColor =  BTHelperFunctions.getColor(text)!= null;
    return Theme(
      data: Theme.of(context).copyWith(canvasColor: Colors.transparent) ,
      child: ChoiceChip(
        surfaceTintColor: BTColors.primaryColor,
        label: isColor ? const SizedBox(): Text(text),
        selected: selected,
        onSelected: onSelected,
        labelStyle: TextStyle(color: selected ? BTColors.white : null),
        avatar : isColor ?  BTCircularContainer(width: 50,height: 50,backgroundColor: BTHelperFunctions.getColor(text)!) : null,
        shape: isColor ? const CircleBorder() : null,
        labelPadding: isColor ? const EdgeInsets.all(0) : null,
        padding:isColor ? const EdgeInsets.all(0) : null,
        //selectedColor: Colors.green,
        backgroundColor: isColor ? BTHelperFunctions.getColor(text)!: null,
      ),
    );
  }
}
