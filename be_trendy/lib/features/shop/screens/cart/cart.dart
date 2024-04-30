import 'package:be_trendy/common/widgets/appbar/appbar.dart';
import 'package:flutter/material.dart';
class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: BTAppBar(title:Text( "Cart", style: Theme.of(context).textTheme.headlineSmall)),
      body: SingleChildScrollView,
    );
  }
}yyekhi chni
