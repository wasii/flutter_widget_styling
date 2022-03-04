import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/widgets/new_transactions.dart';
import 'package:flutter_complete_guide/widgets/transaction_list.dart';

import '../models/transactions.dart';

class UserTransactions extends StatefulWidget {
  @override
  State<UserTransactions> createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
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
      children: [
        NewTransactions(),
        TransactionList(),
      ],
    );
  }
}
