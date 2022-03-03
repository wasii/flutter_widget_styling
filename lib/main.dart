import 'package:flutter/material.dart';
import './transactions.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Transaction> transactions = [
    Transaction(
        id: "T1", title: "New Shoes", amount: 69.99, date: DateTime.now()),
    Transaction(
        id: "T2", title: "New Shirt", amount: 169.99, date: DateTime.now()),
    Transaction(
        id: "T3", title: "New Pant", amount: 9.99, date: DateTime.now()),
    Transaction(
        id: "T4", title: "New Phone", amount: 19.99, date: DateTime.now()),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Apps'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
              width: double.infinity,
              child: Card(
                color: Colors.blue,
                child: Text('Chart!'),
              ) // padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
              ),
          Column(
            children: transactions.map((transaction) {
              return Card(
                child: Text(transaction.title),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
