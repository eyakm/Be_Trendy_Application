import 'package:flutter/material.dart';

class BTSectionHeading extends StatelessWidget {
  const BTSectionHeading({
    super.key,
    this.textColor,
    this.showActionButton = true,
    required this.title,
    this.buttonTitle = 'view All',
    this.onPressed,
  });

  final Color? textColor;
  final bool showActionButton;
  final String title, buttonTitle;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(title, style: Theme.of(context).textTheme.headlineSmall!.apply(color: textColor),maxLines: 1, overflow: TextOverflow.ellipsis),
        if (showActionButton) TextButton(onPressed: (){}, child:  Text(buttonTitle))

      ],
    );
  }
}