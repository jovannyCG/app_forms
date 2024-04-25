
import 'package:flutter/material.dart';


class FormsScreen extends StatelessWidget {
  const FormsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: const Text('registro'),),
      body: const RegisterView(),
    );
  }
}
class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const FlutterLogo(size: 100,),
              TextFormField(),
              TextFormField(),
              TextFormField(),
               const SizedBox(height: 20,),
              FilledButton.tonalIcon(onPressed: (){}, icon: const Icon(Icons.save), label: const Text('crear usuario'),),
              const SizedBox(height: 20,)
            ],
          ),
        ),)
        );
  }
}