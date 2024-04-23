import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:forms_app/blocs/bloc/counter_bloc.dart';

class BlocScreen extends StatelessWidget {
  const BlocScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterBloc(),
      child: const _BlocView(),
    );
  }
}

class _BlocView extends StatelessWidget {
  const _BlocView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          actions: [
            IconButton(
              onPressed: () {
                context.read<CounterBloc>().add(CounterReset());
              },
              icon: const Icon(Icons.refresh_rounded),
            )
          ],
          title: context.select(
            (CounterBloc value) {
              return Text('bloc counter: ${value.state.changesCunter}');
            },
          )),
      body: Center(
          child: context.select(
        (CounterBloc value) => Text('cunter value: ${value.state.counter}'),
      )),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
              heroTag: 1,
              child: const Text('+3'),
              onPressed: () {
                context.read<CounterBloc>().add(const ConterIncreased(3));
              }),
          const SizedBox(
            height: 15,
          ),
          FloatingActionButton(
              heroTag: 2,
              child: const Text('+2'),
              onPressed: () {
                context.read<CounterBloc>().add(const ConterIncreased(2));
              }),
          const SizedBox(
            height: 15,
          ),
          FloatingActionButton(
              heroTag: 3,
              child: const Text('+1'),
              onPressed: () {
                context.read<CounterBloc>().add(const ConterIncreased(1));
              })
        ],
      ),
    );
  }
}
