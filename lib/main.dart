import 'package:flutter/material.dart';
import './widgets/user_transactions.dart';
import 'models/transactions.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
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
        backgroundColor: Colors.purple,
      ),
      body: SingleChildScrollView(
        child: Column(
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
            UserTransactions(),
          ],
        ),
      ),
    );
  }
}
