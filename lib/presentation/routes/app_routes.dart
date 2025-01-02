import 'package:flutter/material.dart';
import 'package:mackle_room_designer/presentation/pages/house_model.dart';
import 'package:mackle_room_designer/presentation/pages/house_selector.dart';

class AppRoutes {
  static const String houseSelector =
      '/houseSelector'; // Ruta para HouseSelector
  static const String houseModel = '/houseModel'; // Ruta para HouseSelector

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
      default:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(
            body: Center(child: Text('Página no encontrada')),
          ),
        );
    }
  }
}
