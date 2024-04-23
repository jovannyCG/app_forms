import 'package:flutter/material.dart';

class BlocScreen extends StatelessWidget {
  const BlocScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: ()=>{}, icon: const Icon(Icons.refresh_rounded),)
        ],
        title: const Text('bloc counter'),
      ),
      body: const Center(
        child: Text('cunter value: 2'),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
              heroTag: 1, child: const Text('+3'), onPressed: () => {}),
          const SizedBox(
            height: 15,
          ),
          FloatingActionButton(
              heroTag: 2, child: const Text('+2'), onPressed: () => {}),
          const SizedBox(
            height: 15,
          ),
          FloatingActionButton(
              heroTag: 3, child: const Text('+1'), onPressed: () => {})
        ],
      ),
    );
  }
}
