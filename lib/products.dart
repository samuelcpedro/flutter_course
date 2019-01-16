import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  // this value is iniatilzed once, but never changed
  // will never changed
  final List<String> products;

  // constructr and accept a list of products
  // and storage in a property
  // Star with a empty list
  //   this.products = const []
  // If optional
  //   [this.products = const []]
  Products([this.products = const []]) {
    // will execute when product widget is created
    print('[Products Widget] Constructor');
  }

  @override
  Widget build(BuildContext context) {
    print('[Products Widget] build()');
    return Column(
      children: products
          .map((element) => Card(
        child: Column(
          children: <Widget>[
            Image.asset('assets/food.jpg'),
            Text(element)
          ],
        ),
      ))
          .toList(),
    );
  }
}
