import 'package:flutter/material.dart';
import 'dart:ui' as ui;
import 'dart:html';

import 'package:mackle_room_designer/presentation/widgets/global/global_widgets.dart';

class HouseModelPage extends StatefulWidget {
  const HouseModelPage({super.key});

  @override
  State<HouseModelPage> createState() => _HouseModelPage();
}

class _HouseModelPage extends State<HouseModelPage> {
  @override
  void initState() {
    super.initState();

    // Registrar el elemento HTML
    ui.platformViewRegistry.registerViewFactory(
      'unity-webgl',
      (int viewId) => IFrameElement()
        ..src = 'assets/unity_webgl/index.html' // Ruta al archivo de Unity
        ..style.border = 'none', // Sin bordes
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: bodyContainer(
        context,
        child: Column(
          children: [
            primaryTitleLarge(context, text: 'House Selector'),
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: const HtmlElementView(viewType: 'unity-webgl'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
