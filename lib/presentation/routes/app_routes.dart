import 'package:flutter/material.dart';
//import 'package:mackle_room_designer/presentation/pages/home_page.dart';
import 'package:mackle_room_designer/presentation/pages/house_description.dart';
import 'package:mackle_room_designer/presentation/pages/house_filter.dart';
import 'package:mackle_room_designer/presentation/pages/house_model.dart';
import 'package:mackle_room_designer/presentation/pages/house_selector.dart';
import 'package:mackle_room_designer/presentation/pages/intro.dart';
import 'package:mackle_room_designer/presentation/pages/unity_flow.dart';

class AppRoutes {
  static const String homePage = '/home_page'; // Ruta para HouseSelector
  static const String houseSelector =
      '/house_selector'; // Ruta para HouseSelector
  static const String houseModel = '/house_model'; // Ruta para HouseSelector
  static const String houseFilter = '/house_filter'; // Ruta para HouseSelector
  static const String houseDescription =
      '/house_description'; // Ruta para HouseSelector
  static const String introPage = '/intro'; // Ruta para HouseSelector

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case houseSelector:
        return PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) =>
              const HouseSelectorPage(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            // Configurar el fade-in
            return FadeTransition(
              opacity: animation,
              child: child,
            );
          },
        );
      case houseModel:
        return PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) =>
              const HouseModelPage(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            // Configurar el fade-in
            return FadeTransition(
              opacity: animation,
              child: child,
            );
          },
        );
      case houseFilter:
        return PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) =>
              const HouseFilterPage(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            // Configurar el fade-in
            return FadeTransition(
              opacity: animation,
              child: child,
            );
          },
        );
      case houseDescription:
        return PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) =>
              const HouseDescriptionPage(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            // Configurar el fade-in
            return FadeTransition(
              opacity: animation,
              child: child,
            );
          },
        );
      case homePage:
        return PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) =>
              //const HomePage(),
              const UnityFlowPage(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            // Configurar el fade-in
            return FadeTransition(
              opacity: animation,
              child: child,
            );
          },
        );
      case introPage:
        return PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) =>
              const IntroPage(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            // Configurar el fade-in
            return FadeTransition(
              opacity: animation,
              child: child,
            );
          },
        );

      default:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(
            body: Center(child: Text('Página no encontrada')),
          ),
        );
    }
  }
}
