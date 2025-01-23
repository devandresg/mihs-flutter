import 'package:flutter/material.dart';
import 'package:mackle_room_designer/presentation/routes/app_routes.dart';
import 'package:mackle_room_designer/presentation/widgets/global/containers.dart';
import 'package:mackle_room_designer/presentation/widgets/global/global_widgets.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
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
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                primaryTitleLarge(context, text: 'Intro'),
                Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                      padding: const EdgeInsets.all(40.0),
                      child: primaryButtonLarge(
                        context,
                        onPressed: () =>
                            Navigator.pushNamed(context, AppRoutes.houseFilter),
                        title: 'Continue',
                      ),
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
