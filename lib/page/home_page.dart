import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Bloc Demo'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('value: 1'),
            ],
          ),
          Container(height: 32.0),
          FlatButton(
            color: Colors.blue,
            child: Text('ADD', style: TextStyle(color: Colors.white)),
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
