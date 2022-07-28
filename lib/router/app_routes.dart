import 'package:flutter/material.dart';
import 'package:components/models/models.dart';
import 'package:components/src/screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
   
    MenuOption(route: 'alert', name: 'Alert', screen: const AlertScreen(), icon: Icons.warning),
    MenuOption(route: 'card', name: 'Card', screen: const CardScreen(), icon: Icons.card_giftcard_sharp),
    MenuOption(route: 'listView1', name: 'List View 1', screen: const ListVie1Screen(), icon: Icons.list),
    MenuOption(route: 'listView2', name: 'List View 2', screen: const ListVie2Screen(), icon: Icons.list_alt),
    MenuOption(route: 'avatar', name: 'Avatar', screen: const AvatarScreen(), icon: Icons.child_care_rounded),
     MenuOption(route: 'animated', name: 'Animação', screen: const AnimatedScreen(), icon: Icons.play_arrow_rounded),
      MenuOption(route: 'inputs', name: 'Inputs', screen: const InputsScreen(), icon: Icons.input_rounded),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes(){
   Map<String, Widget Function(BuildContext)> appRoutes = {};
      appRoutes.addAll({'home':(BuildContext context) => const HomeScreen()});
    for (var option in menuOptions) {
      appRoutes.addAll({option.route:(BuildContext context) => option.screen});
    }
    return appRoutes;
  }

  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'alert': (context) => const AlertScreen(),
  //   'card': (context) => const CardScreen(),
  //   'home': (context) => const HomeScreen(),
  //   'listView1': (context) => const ListVie1Screen(),
  //   'listView2': (context) => const ListVie2Screen(),
  // };

  static Route<dynamic> onGenereteRoute(settings) {
    return MaterialPageRoute(builder: (context) => const HomeScreen());
  }
}
