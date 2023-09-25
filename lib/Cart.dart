import 'dart:convert';
import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
 final productNames ;

  const CartPage({super.key,required this.productNames});

  @override
  Widget build(BuildContext context) {
    int total = productNames.fold(0, (previous, current) => previous + current);
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart'),
      ),
      body: Container(
        child: Center(child: Text('Total Products: $total ')),

      ),
    );
  }
}
