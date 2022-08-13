import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function addTx;
  final TitleController = TextEditingController();
  final AmountController = TextEditingController();
  NewTransaction(this.addTx);
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: 'title'),
              /* onChanged: (val) {
                InputTitle = val;
              }, */
              controller: TitleController,
            ),
            TextField(
              decoration: InputDecoration(labelText: 'amount'),
              // onChanged: (val) => InputAmount = val,
              controller: AmountController,
            ),
            FlatButton(
              onPressed: () {
                /* print(InputAmount);
                print(InputTitle); */
                addTx(
                    TitleController.text, double.parse(AmountController.text));
              },
              child: Text('add transaction'),
              textColor: Colors.purple,
            ),
          ],
        ),
      ),
    );
  }
}
