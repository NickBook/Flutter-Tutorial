import 'package:flutter/material.dart';
import './products.dart';

class ProductManager extends StatefulWidget {
  final String startingProduct;

  ProductManager({this.startingProduct = 'Sweets Tester'});

  @override
  State<StatefulWidget> createState() {
    return _ProductManagerState();
  }
}

class _ProductManagerState extends State<ProductManager> {
  List<String> _products = []; // underscore for properties only used in this class...

  @override
  void initState() {
    _products.add(widget.startingProduct); // use widget property to access properties
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        margin: EdgeInsets.all(10.0),
        child: RaisedButton(
          color: Theme.of(context).primaryColor,
          child: Text('Add Product'),
          onPressed: () {
            setState(() {
              _products.add('Advanced Food Tetster');
            });
          },
        ),
      ),
      Products(_products)
    ]);
  }
}
