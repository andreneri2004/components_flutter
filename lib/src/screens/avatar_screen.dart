import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
   
  const AvatarScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Avatar'),
        actions:  [
          Container(
            margin: const EdgeInsets.all(5),
            child:  CircleAvatar(
              backgroundColor: Colors.indigo[900],
              child: const Text('AV'),
            ),
          )
        ],
      ),
      body:   Center(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(250.0),
          child: const  FadeInImage(
            fit: BoxFit.fill,
            width: 200,
            height: 200,
            image:  NetworkImage('https://static.vecteezy.com/ti/vetor-gratis/p3/2275847-avatar-masculino-perfil-icone-de-homem-caucasiano-sorridente-vetor.jpg'),
            placeholder: AssetImage('assets/images/jar-loading.gif'),
            ),
        ),
      ),
    );
  }
}