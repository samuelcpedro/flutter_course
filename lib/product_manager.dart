import 'package:flutter/material.dart';

import './products.dart';

// manage list and change it
class ProductManager extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ProductManagerState();
  }
}

//
class _ProductManagerState extends State<ProductManager> {
  // the _ character is to define something that will only be used inside of this class
  List<String> _products = ['Food Tester'];

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        margin: EdgeInsets.all(10.0),
        child: RaisedButton(
          onPressed: () {
            setState(() {
              _products.add('Advanced Food Tester');
            });
          },
          child: Text('Add Product'),
        ),
      ),
      Products(_products)
    ]);
  }
}
