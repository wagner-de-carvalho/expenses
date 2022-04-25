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
        id: 't2', title: 'Conta de luz', value: 178.11, date: DateTime.now()),
    Transaction(
        id: 't3', title: 'Conta de água', value: 62.79, date: DateTime.now()),
    Transaction(
        id: 't4',
        title: 'Conta de internet',
        value: 99.00,
        date: DateTime.now()),
    Transaction(
        id: 't5', title: 'prestação', value: 122.30, date: DateTime.now()),
    Transaction(
        id: 't6', title: 'empréstimo', value: 511.221, date: DateTime.now()),
    Transaction(
        id: 't7', title: 'investimento', value: 627.15, date: DateTime.now()),
    Transaction(
        id: 't8', title: 'gasolina', value: 456.62, date: DateTime.now()),
    Transaction(id: 't9', title: 'roupas', value: 396.93, date: DateTime.now()),
    Transaction(
        id: 't10', title: 'comida', value: 785.40, date: DateTime.now()),
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
