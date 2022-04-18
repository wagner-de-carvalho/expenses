import 'package:flutter/material.dart';

class TransactionForm extends StatelessWidget {
  final TextEditingController titleController = TextEditingController();
  final TextEditingController valueController = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            TextField(
                controller: titleController,
                decoration: InputDecoration(labelText: 'Título')),
            TextField(
                controller: valueController,
                decoration: InputDecoration(labelText: 'Valor R\$ ')),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                FlatButton(
                  onPressed: () {
                    print(titleController.text.toString());
                    print(valueController.text.toString());
                  },
                  child: Text('Nova transação'),
                  textColor: Colors.purple,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
