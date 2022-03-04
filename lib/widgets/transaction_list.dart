import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/models/transactions.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TransactionListState();
  }
}

class _TransactionListState extends State<TransactionList> {
  final List<Transaction> _userTransaction = [
    Transaction(
        id: "T1", title: "New Shoes", amount: 69.99, date: DateTime.now()),
    Transaction(
        id: "T2", title: "New Shirt", amount: 16.99, date: DateTime.now()),
    Transaction(
        id: "T3", title: "New Pant", amount: 19.99, date: DateTime.now()),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: _userTransaction.map((transaction) {
        return Card(
          elevation: 5,
          child: Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.symmetric(vertical: 25, horizontal: 15),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                    width: 2,
                  ),
                ),
                padding: EdgeInsets.all(10),
                child: Text('\$${transaction.amount}',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.purple,
                    )),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    transaction.title,
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.w400,
                      fontSize: 19,
                    ),
                  ),
                  Text(
                    DateFormat().add_yMMMd().format(transaction.date),
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w300,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      }).toList(),
    );
  }
}
