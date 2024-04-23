import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:forms_app/blocs/cubit/cubit_counter_cubit.dart';

class CubitScreen extends StatelessWidget {
  const CubitScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CubitCounter(),
      child: const _CubitCounterView(),
    );
  }
}

class _CubitCounterView extends StatelessWidget {
  const _CubitCounterView();

  @override
  Widget build(BuildContext context) {
   // final counterState = context.watch<CubitCounter>().state;
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: ()  {
             context.read<CubitCounter>().reset(); 
            },
            icon: const Icon(Icons.refresh_rounded),
          )
        ],
        title: context.select(( CubitCounter value){
          return Text('cubit counter: ${value.state.changesCunter}');
        },
       // title:  Text('cubit counter: ${counterState.changesCunter}'),
      )),
      body: Center(
        child: BlocBuilder<CubitCounter, CubitCounterState>(
        // buildWhen: (previous, current) => current.counter != previous.counter,
          builder: (context, state) {
            return Text('cunter value: ${state.counter}');
          },
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
              heroTag: 1, child: const Text('+3'), onPressed: ()  {
                context.read<CubitCounter>().increseBy(3); 
              }),
          const SizedBox(
            height: 15,
          ),
          FloatingActionButton(
              heroTag: 2, child: const Text('+2'), onPressed: ()  {
                context.read<CubitCounter>().increseBy(2); 
              }),
          const SizedBox(
            height: 15,
          ),
          FloatingActionButton(
              heroTag: 3, child: const Text('+1'), onPressed: ()  {
                context.read<CubitCounter>().increseBy(1); 
              })
        ],
      ),
    );
  }
}
