import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_demo/bloc/counter/counter_bloc.dart';
import 'package:flutter_bloc_demo/bloc/counter/counter_event.dart';
import 'package:flutter_bloc_demo/bloc/counter/counter_state.dart';

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
              BlocBuilder<CounterBloc, CounterState>(builder: (context, state) {
                if (state is UninitalizedCounterState) {
                  return Text('Uninitialized');
                } else if (state is HasValueCounterState) {
                  return Text('${state.value}');
                }
                return Text('Error');
              },)
            ],
          ),
          Container(height: 32.0),
          FlatButton(
            color: Colors.blue,
            child: Text('ADD', style: TextStyle(color: Colors.white)),
            onPressed: () {
              BlocProvider.of<CounterBloc>(context).add(IncrementCounterEvent());
            },
          )
        ],
      ),
    );
  }
}
