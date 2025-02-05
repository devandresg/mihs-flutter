import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:mackle_room_designer/presentation/bloc/configs/global/global_configs.dart';
import 'package:mackle_room_designer/presentation/routes/app_routes.dart';
import 'package:mackle_room_designer/presentation/widgets/global/global_widgets.dart';
import 'dart:ui' as ui; // Necesario para registrar vistas
import 'dart:html' as html; // Solo para web

class UnityFlowPage extends StatefulWidget {
  const UnityFlowPage({super.key});

  @override
  State<UnityFlowPage> createState() => _UnityFlowPage();
}

class _UnityFlowPage extends State<UnityFlowPage> {
  @override
  void initState() {
    super.initState();

    ui.platformViewRegistry.registerViewFactory(
      'unity-webgl',
      (int viewId) => html.IFrameElement()
        ..src = 'assets/test/index.html' // Ruta al archivo Unity WebGL
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
              child: const HtmlElementView(
                viewType: 'unity-webgl',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
