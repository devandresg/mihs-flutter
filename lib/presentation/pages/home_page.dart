import 'package:flutter/material.dart';
import 'package:mackle_room_designer/presentation/widgets/global/global_widgets.dart';
import 'package:mackle_room_designer/presentation/routes/app_routes.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: bodyContainer(
        context,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            primaryTitleLarge(context, text: 'Mackle Room Designer'),
            Align(
              alignment: Alignment.centerRight,
              child: primaryButtonLarge(
                context,
                onPressed: () =>
                    Navigator.pushNamed(context, AppRoutes.houseSelector),
                title: 'Start',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
