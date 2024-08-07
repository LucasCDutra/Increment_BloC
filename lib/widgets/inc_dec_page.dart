import 'package:bloc_project/bloc/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class IncDecWidget extends StatelessWidget {
  const IncDecWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final counterBloc = BlocProvider.of<CounterBloc>(context);
    return Scaffold(
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              counterBloc.add(CountIncremented());
            },
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
          FloatingActionButton(
            onPressed: () {
              counterBloc.add(CountDecremented());
            },
            tooltip: 'Decrement',
            child: const Icon(Icons.minimize_rounded),
          ),
        ],
      ),
    );
  }
}
