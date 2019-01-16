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
  // the _ character is to define something that will only
  // be used inside of this class
  List<String> _products = [];

  //
  @override
  void initState() {
    /**
     * In the last lecture, initState() was introduced.
     * You learned that you have to call super.initState() in there and that
     * you should put it at the end of your initState() implementation.
     *
     * It's now actually recommend to move at at the beginning,
     * though it will not influence the way your code runs.
     * So the code shown in this course will still work fine without any issues.
     */
    super.initState();
    // widget is provided by the state object and gives us access to the
    // connected StatefulWidget and to its properties and therefore I can
    // safely access startingProduct, add it to my _products and
    // initState will execute when this state is created, so when build runs
    // for the first time, that code will already have been executed.
    _products.add(widget.startingProduct);
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
