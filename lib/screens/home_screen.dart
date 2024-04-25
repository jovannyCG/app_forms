

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: ListView(
        children: [
          ListTile(
            title: const Text("cubits"),
            subtitle: const Text("gestor de estado con cubits"),
            trailing: const Icon(Icons.arrow_forward),
            onTap: ()=>context.push('/cubits'),
          ),
          ListTile(
            title: const Text("bloc"),
            subtitle: const Text("gestor de estado con bloc"),
            trailing: const Icon(Icons.arrow_forward),
            onTap: ()=>context.push('/bloc'),
          ),
          ListTile(
            title: const Text("Registro de usuarios"),
            subtitle: const Text("nuevo usuario"),
            trailing: const Icon(Icons.arrow_forward),
            onTap: ()=>context.push('/new_user'),
          ),
        ],
      ),
    );
  }
}