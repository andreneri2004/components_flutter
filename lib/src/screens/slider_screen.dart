import 'package:flutter/material.dart';
import 'package:components/theme/app_theme.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;
  bool _sliderEnable = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slider & Checks'),
      ),
      body: Column(
        children: [
          Slider.adaptive(
            activeColor: AppTheme.primary,
            value: _sliderValue,
            max: 400,
            onChanged: !_sliderEnable
                ? null
                : (value) {
                    _sliderValue = value;
                    setState(() {});
                  },
          ),
          /*
          Simples
          Checkbox(
              activeColor: AppTheme.primary,
              value: _sliderEnable,
              onChanged: (value) {
                _sliderEnable = value ?? true;
                setState(() {});
              }),
            */
          /*
          CheckboxListTile(
            title: const Text('Ativa e Desativa'),
            activeColor: AppTheme.primary,
            value: _sliderEnable,
            onChanged: ((value) => setState(() {
              _sliderEnable = value ?? true;
            }))
            ),
            */
          /*
            Switch(
              value: _sliderEnable, 
              onChanged: ((value) => setState(() {
                _sliderEnable = value;
              }))
              ),
            */

          SwitchListTile.adaptive(
            value: _sliderEnable,
            activeColor: AppTheme.primary,
            title: const Text('Ativar/Desativar'),
            onChanged: (value) => setState(() {
              _sliderEnable = value;
            }),
          ),

            
          //const AboutDialog(applicationVersion: 'Versão 1.0'),
          Expanded(
            child: SingleChildScrollView(
              child: Image(
                image: const NetworkImage(
                    'https://i0.wp.com/www.multarte.com.br/wp-content/uploads/2019/03/capitao-america2.png?resize=696%2C963&ssl=1'),
                fit: BoxFit.contain,
                width: _sliderValue,
              ),
            ),
          )
        ],
      ),
    );
  }
}
