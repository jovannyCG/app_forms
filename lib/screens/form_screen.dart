import 'package:flutter/material.dart';
import 'package:forms_app/widgets/inputs/text_form_field.dart';

class FormsScreen extends StatelessWidget {
  const FormsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('registro'),
      ),
      body: const RegisterView(),
    );
  }
}

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: SingleChildScrollView(child: Registerform()),
    ));
  }
}

class Registerform extends StatelessWidget {
  const Registerform({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const FlutterLogo(
          size: 100,
        ),
        InputField(),
        const SizedBox(
          height: 10,
        ),
         InputField(),
        FilledButton.tonalIcon(
          onPressed: () {},
          icon: const Icon(Icons.save),
          label: const Text('crear usuario'),
        ),
        const SizedBox(
          height: 20,
        )
      ],
    );
  }
}
