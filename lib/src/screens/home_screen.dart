import 'package:flutter/material.dart';
import 'package:components/theme/app_theme.dart';
import 'package:components/router/app_routes.dart';


class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    final menuOption = AppRoutes.menuOptions;
    return  Scaffold(
      appBar: AppBar(title: const Text('Componentes do flutter'),),
      body: ListView.separated(
        itemBuilder: (context , index){
          return  ListTile(
            leading: Icon(menuOption[index].icon, color: AppTheme.lightTheme.primaryColor,),
             title: Text(menuOption[index].name),
             onTap: () {
                // final route = MaterialPageRoute(builder: (context) => const ListVie1Screen());
                // Navigator.push(context, route);
                Navigator.pushNamed(context, menuOption[index].route);
             },
          );
        }, 
        separatorBuilder: ((_, __) => const Divider()), 
        itemCount: menuOption.length
        ),
    );
  }
}