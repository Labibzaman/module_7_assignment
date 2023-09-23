import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: ProductListApp(),
  ));
}

class ProductListApp extends StatefulWidget {
  const ProductListApp({super.key});

  @override
  State<ProductListApp> createState() => _ProductListAppState();
}

class _ProductListAppState extends State<ProductListApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Product List')),
      ),
      body: Container(
        child: ListView(
          children: [
            ListTile(
              title: Text('Product 1'),
              subtitle: Text('15.50'),
              trailing:
                  ElevatedButton(onPressed: () {
                    Text('data');
                  }, child: Text('Buy Now')),
            )
          ],
        ),
      ),
    );
  }
}
