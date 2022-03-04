import 'package:flutter/material.dart';
import './widgets/new_transactions.dart';
import './widgets/transaction_list.dart';
import 'models/transactions.dart';

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
    
  ];

  // String titleInput;
  // String amountInput;

  final titleController = TextEditingController();
  final amountContorller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Apps'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Container(
          //   width: double.infinity,
          //   child: Card(
          //     color: Colors.blue,
          //     child: Text('Chart!'),
          //   ), // padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
          // ),
          NewTransactions(),
          TransactionList(),
        ],
      ),
    );
  }
}
