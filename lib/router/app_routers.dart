import 'package:flutter/material.dart';

import 'package:fl_components/models/models.dart';
import '../screens/screens.dart';

class AppRouter {
  static const initialRouter = 'home';
  static final menuOption = <MenuOption>[
    // TDO: Borrar home
    //MenuOption('home', Icons.home, 'Home Screen', const HomeScreen()),
    MenuOption('listview1', Icons.list_alt, 'Listview Tipo 1', const ListviewScreen()),
    MenuOption('listview2', Icons.list_sharp, 'Listview Tipo 2', const Listview2Screen()),
    MenuOption('alert', Icons.sd_card_alert, 'Alertas - Alert Screen', const AlertScreen()),
    MenuOption('card', Icons.card_membership, 'Tarjetas - Card Screen', const CardScreen()),
    MenuOption('Avatar', Icons.supervised_user_circle_outlined, 'Cicle Avatar', const AvatarScreen()),
    MenuOption('Animated', Icons.play_circle_filled_rounded, 'Animated screen', const AnimetedScreen()),
    MenuOption('Inputs', Icons.input_outlined, 'Inputs screen', const InputsScreen()),
    MenuOption('slider', Icons.slideshow_rounded, 'Slider and checks', const sliderScreen())
  ];

  static Map<String, Widget Function(BuildContext)> getAppRouters(){
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    appRoutes.addAll({'home' :  ( BuildContext context ) => const HomeScreen()});

    for (final option in menuOption) {
      appRoutes.addAll({option.route :  ( BuildContext context ) => option.screen});
      
    }
  return appRoutes;
  }
  /*
  static Map<String, Widget Function(BuildContext)> routes = {
        'home'     : ( BuildContext context ) => const HomeScreen(),
        'listview1': ( BuildContext context ) => const ListviewScreen(),
        'listview2': ( BuildContext context ) => const Listview2Screen(),
        'alert'    : ( BuildContext context ) => const AlertScreen(),
        'card'     : ( BuildContext context ) => const CardScreen(),
      };
      */

  static Route<dynamic> onGenerateRoute (RouteSettings settings) {
        return MaterialPageRoute(
          builder: (context) => const AlertScreen(),
          );
    }
}