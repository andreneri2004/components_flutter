
import 'package:components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCard2 extends StatelessWidget {

  final String url;
  final String? titulo;

  const CustomCard2({Key? key, required this.url,  this.titulo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      //Bordas Arredondadas
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15) 
      ),
      elevation: 10,
      shadowColor: AppTheme.primary.withOpacity(0.4),
      child: Column(
        children:  [
           FadeInImage(
            image: NetworkImage(
                url),
            placeholder: const  AssetImage('assets/images/jar-loading.gif'),
            width: double.infinity,
            height: 230,
            fit: BoxFit.cover,
            fadeInDuration: const Duration(milliseconds: 200),
          ),
          if(titulo != null)
          Container(
            alignment: AlignmentDirectional.centerEnd,
            padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
            child: Text(titulo!),
          )         
        ],
      ),
    );
  }
}