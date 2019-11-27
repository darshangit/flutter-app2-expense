import 'package:flutter/material.dart';
import '../models/transaction.dart';

import 'new_transaction.dart';
import 'transaction_list.dart';

class UserTransactions extends StatefulWidget {
  @override
  _UserTransactionsState createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  final List<Transaction> _userTransactions = [
    Transaction(
        id: 't1', title: 'New Shoes', amount: 69.99, date: DateTime.now()),
    Transaction(
        id: 't2',
        title: 'Weekly Groceries',
        amount: 16.99,
        date: DateTime.now()),
    Transaction(
        id: 't3',
        title: 'Weekly Groceries',
        amount: 16.99,
        date: DateTime.now()),
    Transaction(
        id: 't4',
        title: 'Weekly Groceries',
        amount: 16.99,
        date: DateTime.now()),
    Transaction(
        id: 't5',
        title: 'Weekly Groceries',
        amount: 16.99,
        date: DateTime.now()),
    Transaction(
        id: 't6',
        title: 'Weekly Groceries',
        amount: 16.99,
        date: DateTime.now())
  ];

  void _addNewTransaction(String title, String amount) {
    final newTx = Transaction(
        title: title,
        amount: double.parse(amount),
        date: DateTime.now(),
        id: DateTime.now().toString());

        setState(() {
          _userTransactions.add(newTx);
        });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[NewTransaction(_addNewTransaction), TransactionList(_userTransactions)],
    );
  }
}