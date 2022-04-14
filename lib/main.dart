import 'package:expenses/models/transaction.dart';
import 'package:flutter/material.dart';

main() => runApp(ExpensesApp());

class ExpensesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final _transactions = [
    Transaction(id: 't1', title: 'Novo tênis de corrida', value: 310.75, date: DateTime.now()),
    Transaction(id: 't2', title: 'Conta de luz', value: 178.11, date: DateTime.now()),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Despesas Pessoais'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              width: double.infinity,
              child: Card(
                child: Text('Gráfico'),
                elevation: 5,
                color: Colors.blue,
              ),
            ),
            Card(child: Text('Lista de Transações'))
          ],
        ));
  }
}
