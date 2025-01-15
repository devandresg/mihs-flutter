import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:mackle_room_designer/presentation/bloc/configs/global/global_configs.dart';
import 'package:mackle_room_designer/presentation/routes/app_routes.dart';
import 'package:mackle_room_designer/presentation/widgets/global/global_widgets.dart';
import 'dart:ui' as ui; // Necesario para registrar vistas
import 'dart:html' as html; // Solo para web

class HouseModelPage extends StatefulWidget {
  const HouseModelPage({super.key});

  @override
  State<HouseModelPage> createState() => _HouseModelPage();
}

class _HouseModelPage extends State<HouseModelPage> {
  @override
  void initState() {
    super.initState();

    ui.platformViewRegistry.registerViewFactory(
      'unity-webgl',
      (int viewId) => html.IFrameElement()
        ..src = 'assets/unity_webgl/index.html' // Ruta al archivo Unity WebGL
        ..style.border = 'none', // Sin bordes
    );
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: bodyContainer(
        context,
        child: Stack(
          children: [
            SizedBox(
              width: screenSize.width,
              height: screenSize.height,
              child: Image.asset(
                'assets/img/Model_Home_Marco_Island_Book.jpg',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              width: screenSize.width,
              height: screenSize.height,
              color: Colors.black.withOpacity(0.7),
            ),
            SizedBox(
              width: screenSize.width,
              height: screenSize.height * 0.85,
              child: const HtmlElementView(
                viewType: 'unity-webgl',
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: primaryTitleLarge(
                  context,
                  text: AppConfig.selectedHouse['name'],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.all(40.0),
                child: primaryButtonLarge(
                  context,
                  title: 'Continue',
                  onPressed: () =>
                      Navigator.pushNamed(context, AppRoutes.houseDescription),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
