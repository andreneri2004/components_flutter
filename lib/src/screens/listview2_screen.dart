import 'package:flutter/material.dart';

class ListVie2Screen extends StatelessWidget {
  const ListVie2Screen({Key? key}) : super(key: key);

  final options = const ["PHP", "DART", "JAVA", "JAVASCRIPT", "PYTON"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView 1'),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.indigo,
      ),
      body: ListView.separated(
          itemCount: options.length,
          itemBuilder: (context, index) => ListTile(
              title: Text(options[index]),
              trailing: const Icon(Icons.arrow_forward, color: Colors.indigo),
              onTap: (){
              
              },
              ),
              separatorBuilder: (context, index) => const Divider(),
          ),
    );
  }
}
