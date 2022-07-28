import 'package:flutter/material.dart';

class ListVie1Screen extends StatelessWidget {
  const ListVie1Screen({Key? key}) : super(key: key);

  final options = const ["PHP", "DART", "JAVA", "JAVASCRIPT", "PYTON"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView 1'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          ...options.map((e) => ListTile(
            trailing: const Icon(Icons.arrow_forward_sharp),
            leading: const Icon(Icons.abc),
            title: Text(e),)).toList(),
        ],
      ),
    );
  }
}
