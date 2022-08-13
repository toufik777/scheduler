import 'package:flutter/material.dart';
import 'package:scheduler/widgets/user_transaction.dart';
import './widgets/user_transaction.dart';

void main() => runApp(MainWidget());

class MainWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'scheduler',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  /* late String InputTitle;
  late String InputAmount; */
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('scheduler'),
      ),
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            width: double.infinity,
            child: Card(
              color: Colors.blue,
              child: Text('chart'),
            ),
          ),
          UserTransactions()
        ],
      ),
    );
  }
}
