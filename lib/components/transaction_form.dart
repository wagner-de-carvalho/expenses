import 'package:flutter/material.dart';

class TransactionForm extends StatelessWidget {
  final TextEditingController titleController = TextEditingController();
  final TextEditingController valueController = TextEditingController();

  final void Function(String, double) onSubmit;

  TransactionForm(this.onSubmit);

  _submitForm() {
    final title = titleController.text.toString();
    final value = double.tryParse(valueController.text.toString()) ?? 0.0;
    if (title.isEmpty || value <= 0) {
      return;
    }
    onSubmit(title, value);
  }

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
                onSubmitted: (_) => _submitForm(),
                decoration: InputDecoration(labelText: 'Título')),
            TextField(
                controller: valueController,
                keyboardType: TextInputType.numberWithOptions(decimal: true),
                onSubmitted: (_) => _submitForm(),
                decoration: InputDecoration(labelText: 'Valor R\$ ')),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                FlatButton(
                  onPressed: _submitForm,
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
