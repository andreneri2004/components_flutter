import 'package:flutter/material.dart';
import 'package:components/widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Quando se quer ter uma referência do componente
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {};

    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs e Forms'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Form(
            key: myFormKey,
            child: Column(
              children: [
                CustomInputFild(
                  labelText: 'Nome',
                  sufixo: Icons.abc_outlined,
                  formProperty: 'first_name',
                  formValues: formValues,
                ),
                const SizedBox(height: 30),
                CustomInputFild(
                  labelText: 'CPF',
                  sufixo: Icons.account_box_outlined,
                  formProperty: 'cpf',
                  formValues: formValues,
                ),
                const SizedBox(height: 30),
                CustomInputFild(
                    labelText: 'E-MAIL',
                    sufixo: Icons.email,
                    textInputType: TextInputType.emailAddress,
                    formProperty: 'email',
                    formValues: formValues),
                const SizedBox(height: 30),
                CustomInputFild(
                    labelText: 'SENHA',
                    sufixo: Icons.password,
                    obscureText: true,
                    formProperty: 'senha',
                    formValues: formValues),
                const SizedBox(height: 30),
                DropdownButtonFormField<String>(
                  value: "Admin",
                  items: const [
                    DropdownMenuItem(value: 'Admin', child: Text('Admin')),
                    DropdownMenuItem(value: 'SuperUser', child: Text('SuperUser')),
                    DropdownMenuItem(value: 'Develop', child: Text('Develop')),
                    DropdownMenuItem(value: 'Jr. Develop', child: Text('Jr. Develop'),)
                  ],
                  onChanged: (value){
                    formValues['role'] = value ?? "admin"; 
                  }
                  ),
                  const SizedBox(height: 30),
                ElevatedButton(
                    onPressed: () {
                      FocusManager.instance.primaryFocus?.unfocus();
                      //Ativa as validações do formulário
                      if (!myFormKey.currentState!.validate()) {
                        print('Formulario não válido');
                        return;
                      }
                      print(formValues);
                    },
                    child: const SizedBox(
                      width: double.infinity,
                      child: Text('Gravar', textAlign: TextAlign.center),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
