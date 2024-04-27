import 'package:flutter/material.dart';

class BTProductPriceText extends StatelessWidget {
  const BTProductPriceText({
    super.key,
    this.currencySign = " DT",
    required this.price,
    this.maxLines = 1,
    this.isLarge = false,
    this.lineThrough = false,
  });

  final String currencySign, price;
  final int maxLines;
  final bool isLarge;
  final bool lineThrough;
  @override
  Widget build(BuildContext context) {
    return Text(
      price + currencySign ,
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
      style: isLarge
          ? Theme.of(context).textTheme.headlineMedium!.apply(
              decoration: lineThrough ? TextDecoration.lineThrough : null)
          : Theme.of(context).textTheme.titleLarge!.apply(
              decoration: lineThrough ? TextDecoration.lineThrough : null),
    );
  }
}

///Text('TND230.99',
//       maxLines: 1,
//       overflow: TextOverflow.ellipsis,
//       style: Theme.of(context).textTheme.headlineMedium,