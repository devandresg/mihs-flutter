import 'package:flutter/material.dart';
import 'package:mackle_room_designer/data/models/houses_data.dart';
import 'package:mackle_room_designer/presentation/routes/app_routes.dart';
import 'package:mackle_room_designer/presentation/widgets/global/global_widgets.dart';
import 'package:mackle_room_designer/presentation/widgets/house_selector/house_selector_widgets.dart';

class HouseSelectorPage extends StatefulWidget {
  const HouseSelectorPage({super.key});

  @override
  State<HouseSelectorPage> createState() => _HouseSelectorPageState();
}

class _HouseSelectorPageState extends State<HouseSelectorPage> {
  @override
  Widget build(BuildContext context) {
    dynamic screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          bodyContainer(
            context,
            child: Column(
              children: [
                primaryTitleLarge(context, text: 'House Selector'),
                Expanded(
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3, // Define 3 columnas
                      crossAxisSpacing: 8.0, // Espacio entre columnas
                      mainAxisSpacing: 8.0, // Espacio entre filas
                      childAspectRatio:
                          screenSize.width / screenSize.height * 1.15,
                    ),
                    itemCount: housesData.length,
                    itemBuilder: (context, item) => houseCard(context,
                        onTap: () =>
                            Navigator.pushNamed(context, AppRoutes.houseModel),
                        houseData: housesData[item]),
                  ),
                ),
              ],
            ),
          ),
          houseDescription(context, houseData: {}),
        ],
      ),
    );
  }
}

Widget houseDescription(BuildContext context, {houseData}) {
  dynamic screenSize = MediaQuery.of(context).size;
  return Container(
    width: screenSize.width,
    height: screenSize.height,
    decoration: BoxDecoration(
      color: Colors.black.withOpacity(0.5),
    ),
    child: Center(
      child: Container(
        width: screenSize.width * 0.5,
        height: screenSize.height * 0.9,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.onSurface,
          borderRadius: BorderRadius.circular(3.0),
        ),
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Column(
                spacing: 10.0,
                children: [
                  primaryTitleLarge(context, text: 'House Title'),
                  Container(
                    height: 200,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(3.0),
                    ),
                  ),
                  Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                    style: Theme.of(context).textTheme.labelSmall?.copyWith(
                          color: Colors.black87,
                        ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            child: Column(
                              spacing: 10.0,
                              children: [
                                Expanded(
                                  child: Container(
                                    decoration:
                                        BoxDecoration(color: Colors.green),
                                  ),
                                ),
                                Expanded(
                                  child: GridView.builder(
                                    gridDelegate:
                                        SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 3, // Número de columnas
                                      crossAxisSpacing:
                                          10, // Espacio horizontal entre las celdas
                                      mainAxisSpacing:
                                          10, // Espacio vertical entre las celdas
                                    ),
                                    itemCount: 6, // Número total de elementos
                                    itemBuilder: (context, index) {
                                      return Container(
                                        color: Colors
                                            .red, // Color rojo para las cajitas
                                        child: Center(
                                          child: Text(
                                            'Caja ${index + 1}', // Texto dentro de cada cajita
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              Text(
                                'Description: ',
                                style: Theme.of(context)
                                    .textTheme
                                    .labelSmall
                                    ?.copyWith(
                                      color: Colors.black87,
                                    ),
                              ),
                              Text(
                                'blue: Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                                style: Theme.of(context)
                                    .textTheme
                                    .labelSmall
                                    ?.copyWith(
                                      color: Colors.black87,
                                    ),
                              ),
                              Text(
                                'green: Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris.',
                                style: Theme.of(context)
                                    .textTheme
                                    .labelSmall
                                    ?.copyWith(
                                      color: Colors.black87,
                                    ),
                              ),
                              Text(
                                'red: Duis aute irure dolor in reprehenderit in voluptate velit.',
                                style: Theme.of(context)
                                    .textTheme
                                    .labelSmall
                                    ?.copyWith(
                                      color: Colors.black87,
                                    ),
                              ),
                              Text(
                                'purple: Excepteur sint occaecat cupidatat non proident, sunt in culpa.',
                                style: Theme.of(context)
                                    .textTheme
                                    .labelSmall
                                    ?.copyWith(
                                      color: Colors.black87,
                                    ),
                              ),
                              Text(
                                'orange: Sed ut perspiciatis unde omnis iste natus error sit voluptatem.',
                                style: Theme.of(context)
                                    .textTheme
                                    .labelSmall
                                    ?.copyWith(
                                      color: Colors.black87,
                                    ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
