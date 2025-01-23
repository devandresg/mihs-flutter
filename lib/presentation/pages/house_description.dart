import 'package:flutter/material.dart';
import 'package:mackle_room_designer/data/models/houses_data.dart';
import 'package:mackle_room_designer/presentation/widgets/global/global_widgets.dart';
import 'package:mackle_room_designer/presentation/widgets/house_selector/house_description_buy.dart';

class HouseDescriptionPage extends StatefulWidget {
  const HouseDescriptionPage({super.key});

  @override
  State<HouseDescriptionPage> createState() => _HouseDescriptionPageState();
}

class _HouseDescriptionPageState extends State<HouseDescriptionPage> {
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
                houseDescriptionBuy(context, houseData: housesData[0])
              ],
            ),
          ],
        ),
      ),
    );
  }
}
