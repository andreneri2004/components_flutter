import 'package:flutter/material.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs e Forms'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: const [
              CustomTextFormFild(),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomTextFormFild extends StatelessWidget {
  const CustomTextFormFild({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: false,
      textCapitalization: TextCapitalization.words,
      onChanged: (value) {},
      validator: (value) {
        if (value == null) return 'Campo obrigatório';
        return value.length < 3 ? "Mínimo de 3 caracters" : null;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: const InputDecoration(
          hintText: 'CPF',
          labelText: 'CPF',
          helperText: 'Apenas letras',
          counterText: '3 de 10',
          suffixIcon: Icon(Icons.group_outlined),
          icon: Icon(
            Icons.assignment_ind,
            color: Colors.indigo,
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.green
            )
          ),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  topRight: Radius.circular(10)))),
    );
  }
}
