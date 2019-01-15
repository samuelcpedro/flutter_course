import 'package:flutter/material.dart';

import './products.dart';

// manage list and change it
class ProductManager extends StatefulWidget {

  //
  final String startingProduct;

  //
  ProductManager(this.startingProduct);

  @override
  State<StatefulWidget> createState() {
    return _ProductManagerState();
  }
}

//
class _ProductManagerState extends State<ProductManager> {
  // the _ character is to define something that will only be used inside of this class
  List<String> _products = [];

  //
  @override
  void initState() {
    // widget is provided by the state object and gives us access to the
    // connected StatefulWidget and to its properties and therefore I can
    // safely access startingProduct, add it to my _products and
    // initState will execute when this state is created, so when build runs
    // for the first time, that code will already have been executed.
    _products.add(widget.startingProduct);
    super.initState();
  }
  
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
