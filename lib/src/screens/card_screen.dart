import 'package:components/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cards'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        children: const  [
          CustomCardType1(),
          SizedBox(height: 20),
          CustomCard2(url: 'https://www.showmetech.com.br/wp-content/uploads//2021/09/capa-alienware.png', titulo: 'Alienware Lado',),
           SizedBox(height: 20),
          CustomCard2(url: 'https://attach.mobile01.com/attach/202202/mobile01-641d8ee442145bb212d85ca179448aff.jpg.webp', titulo: 'Fundo do Alienware'),
        ],
      ),
    );
  }
}


