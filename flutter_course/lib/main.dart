import 'package:flutter/material.dart';
import './product_manager.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
        accentColor: Colors.deepPurple,
        brightness: Brightness.light
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Easy List'),
        ),
        body: ProductManager(startingProduct: 'Food Tester'),
      ),
    );
  }
}
