import 'package:flutter/material.dart';
import 'package:mackle_room_designer/data/models/houses_data.dart';
import 'package:mackle_room_designer/presentation/bloc/configs/global/global_configs.dart';
import 'package:mackle_room_designer/presentation/routes/app_routes.dart';
import 'package:mackle_room_designer/presentation/widgets/global/global_widgets.dart';
import 'package:mackle_room_designer/presentation/widgets/house_selector/house_description.dart';
import 'package:mackle_room_designer/presentation/widgets/house_selector/house_selector_widgets.dart';

class HouseSelectorPage extends StatefulWidget {
  const HouseSelectorPage({super.key});

  @override
  State<HouseSelectorPage> createState() => _HouseSelectorPageState();
}

class _HouseSelectorPageState extends State<HouseSelectorPage> {
  bool showDescription = false;
  @override
  Widget build(BuildContext context) {
    dynamic screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: screenSize.width,
            height: screenSize.height,
            child: Image.asset(
              housesData[0]['imageUrl'],
              fit: BoxFit.cover,
            ),
          ),
          Container(
            width: screenSize.width,
            height: screenSize.height,
            color: Colors.black.withOpacity(0.5),
          ),
          bodyContainer(
            context,
            child: Column(
              children: [
                primaryTitleLarge(context, text: 'House Selector'),
                Expanded(
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: housesData.take(1).map<Widget>((item) {
                        return houseCard(context,
                            onTap: () => setState(() {
                                  AppConfig.selectedHouse = item;
                                  showDescription = true;
                                }),
                            houseData: item);
                      }).toList(), // Convierte el iterable en una lista
                    ),
                  ),
                ),
              ],
            ),
          ),
          showDescription == true
              ? houseDescription(context, houseData: housesData[0])
              : const SizedBox(),
          showDescription == true
              ? Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: primaryButtonLarge(
                      context,
                      onPressed: () =>
                          Navigator.pushNamed(context, AppRoutes.houseModel),
                      title: 'Continue',
                    ),
                  ),
                )
              : const SizedBox(),
        ],
      ),
    );
  }
}
