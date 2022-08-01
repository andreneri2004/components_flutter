import 'package:flutter/material.dart';

class CustomInputFild extends StatelessWidget {
  final String? labelText;
  final String? helperText;
  final String? counterText;
  final IconData? icon;
  final IconData? sufixo;
  final bool? obscureText; 
  final TextInputType? textInputType;
  final String formProperty;
  final Map<String, String> formValues;

  const CustomInputFild({
    Key? key,
    this.labelText,
    this.helperText,
    this.counterText,
    this.icon,
    this.sufixo,
    this.obscureText = false,
    this.textInputType = TextInputType.name,
    required this.formProperty,
    required this.formValues,    
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
    
      obscureText: obscureText!,
      keyboardType: textInputType,
      autofocus: false,
      textCapitalization: TextCapitalization.words,
      onChanged: (value) => formValues[formProperty] = value,
      validator: (value) {
        if (value == null) return 'Campo obrigatório';
        return value.length < 3 ? "Mínimo de 3 caracters" : null;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        labelText: labelText,
        helperText: helperText,
        counterText: counterText,
        suffixIcon: sufixo == null ? null : Icon(sufixo),
        icon: icon == null
            ? null
            : Icon(
                icon,
                color: Colors.indigo,
              ),
      ),
    );
  }
}
