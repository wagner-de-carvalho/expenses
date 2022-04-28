import 'dart:math';

import 'package:expenses/components/transaction_form.dart';
import 'package:expenses/components/transaction_list.dart';
import 'package:expenses/models/transaction.dart';
import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

class TransactionUser extends StatefulWidget {
  @override
  _TransactionUserState createState() => _TransactionUserState();
}

class _TransactionUserState extends State<TransactionUser> {
  final _transactions = [
    Transaction(
        id: 't1',
        title: 'Novo tênis de corrida',
        value: 310.75,
        date: DateTime.now()),
    Transaction(
        id: 't2', title: 'Conta de luz', value: 178.11, date: DateTime.now())
  ];

  _addTransaction(String title, double value) {
    var uuid = const Uuid();
    final newTransaction = Transaction(
        id: uuid.v4(), title: title, value: value, date: DateTime.now());
    setState(() {
      _transactions.add(newTransaction);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TransactionList(_transactions),
        TransactionForm(_addTransaction)
      ],
    );
  }
}
