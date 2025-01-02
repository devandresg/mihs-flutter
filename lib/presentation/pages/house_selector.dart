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
  dynamic selectedHouse;
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
                        onTap: () => setState(() {
                              selectedHouse = housesData[item];
                            }),
                        houseData: housesData[item]),
                  ),
                ),
              ],
            ),
          ),
          selectedHouse != null
              ? houseDescription(
                  context,
                  houseData: selectedHouse,
                  closeFunction: () => setState(() {
                    selectedHouse = null;
                  }),
                )
              : SizedBox(),
        ],
      ),
    );
  }
}

Widget houseDescription(BuildContext context, {houseData, closeFunction}) {
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
            Align(
              alignment: Alignment.topRight,
              child: GestureDetector(
                onTap: closeFunction,
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    'close (X)',
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall
                        ?.copyWith(color: Colors.black87),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Column(
                spacing: 10.0,
                children: [
                  primaryTitleLarge(context, text: houseData["name"]),
                  SizedBox(
                    height: 200.0,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(3.0),
                      child: Image.asset(
                        houseData["imageUrl"],
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Text(
                    'The iConstellation is a cozy yet modern home designed by the Mackle Brothers, radiating a celestial charm that lives up to its name.',
                    style: Theme.of(context).textTheme.labelMedium?.copyWith(
                          color: Colors.black87,
                        ),
                    textAlign: TextAlign.center,
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Align(
                              alignment: Alignment.center,
                              child: GridView.builder(
                                shrinkWrap: true,
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 3, // Número de columnas
                                  crossAxisSpacing:
                                      5, // Espacio horizontal entre las celdas
                                  mainAxisSpacing: 5,
                                ),
                                itemCount: 6, // Número total de elementos
                                itemBuilder: (context, index) {
                                  return Container(
                                    decoration: BoxDecoration(
                                      color: Colors
                                          .blueGrey, // Color rojo para las cajitas
                                      borderRadius: BorderRadius.circular(3.0),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'Feature ${index + 1}', // Texto dentro de cada cajita
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodySmall,
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10.0),
                            child: SingleChildScrollView(
                              child: Column(
                                spacing: 5.0,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Features',
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleSmall
                                        ?.copyWith(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .primary,
                                        ),
                                  ),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    spacing: 10.0,
                                    children: [
                                      Expanded(
                                        flex: 1,
                                        child: Text(
                                          'Two bedrooms:',
                                          style: Theme.of(context)
                                              .textTheme
                                              .labelSmall
                                              ?.copyWith(
                                                color: Colors.black87,
                                                fontWeight: FontWeight.bold,
                                              ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 2,
                                        child: Text(
                                          'The primary suite is spacious with an en-suite bathroom and large windows for stargazing.',
                                          style: Theme.of(context)
                                              .textTheme
                                              .labelSmall
                                              ?.copyWith(
                                                color: Colors.black87,
                                              ),
                                          textAlign: TextAlign.justify,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    spacing: 10.0,
                                    children: [
                                      Expanded(
                                        flex: 1,
                                        child: Text(
                                          'A sleek kitchen:',
                                          style: Theme.of(context)
                                              .textTheme
                                              .labelSmall
                                              ?.copyWith(
                                                color: Colors.black87,
                                                fontWeight: FontWeight.bold,
                                              ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 2,
                                        child: Text(
                                          'Equipped with state-of-the-art appliances and a constellation-inspired backsplash.',
                                          style: Theme.of(context)
                                              .textTheme
                                              .labelSmall
                                              ?.copyWith(
                                                color: Colors.black87,
                                              ),
                                          textAlign: TextAlign.justify,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    spacing: 10.0,
                                    children: [
                                      Expanded(
                                        flex: 1,
                                        child: Text(
                                          'A luminous living room:',
                                          style: Theme.of(context)
                                              .textTheme
                                              .labelSmall
                                              ?.copyWith(
                                                color: Colors.black87,
                                                fontWeight: FontWeight.bold,
                                              ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 2,
                                        child: Text(
                                          'Highlighted by a vaulted ceiling and a skylight that frames the night sky.',
                                          style: Theme.of(context)
                                              .textTheme
                                              .labelSmall
                                              ?.copyWith(
                                                color: Colors.black87,
                                              ),
                                          textAlign: TextAlign.justify,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    spacing: 10.0,
                                    children: [
                                      Expanded(
                                        flex: 1,
                                        child: Text(
                                          'A private balcony:',
                                          style: Theme.of(context)
                                              .textTheme
                                              .labelSmall
                                              ?.copyWith(
                                                color: Colors.black87,
                                                fontWeight: FontWeight.bold,
                                              ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 2,
                                        child: Text(
                                          'Perfect for evening relaxation under the stars.',
                                          style: Theme.of(context)
                                              .textTheme
                                              .labelSmall
                                              ?.copyWith(
                                                color: Colors.black87,
                                              ),
                                          textAlign: TextAlign.justify,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    spacing: 10.0,
                                    children: [
                                      Expanded(
                                        flex: 1,
                                        child: Text(
                                          'An open floor plan:',
                                          style: Theme.of(context)
                                              .textTheme
                                              .labelSmall
                                              ?.copyWith(
                                                color: Colors.black87,
                                                fontWeight: FontWeight.bold,
                                              ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 2,
                                        child: Text(
                                          'Seamlessly connecting the dining area, kitchen, and living space for a harmonious flow.',
                                          style: Theme.of(context)
                                              .textTheme
                                              .labelSmall
                                              ?.copyWith(
                                                color: Colors.black87,
                                              ),
                                          textAlign: TextAlign.justify,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: SizedBox(
                            child: Center(
                              child: Column(
                                children: [
                                  Expanded(
                                    child: SizedBox(),
                                  ),
                                  Text(
                                    'Price ${houseData["price"]}',
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleSmall
                                        ?.copyWith(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .primary,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(3.0),
                            child: Image.asset(
                              'assets/img/plane.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  primaryButtonLarge(
                    context,
                    title: 'Continue',
                    onPressed: () =>
                        Navigator.pushNamed(context, AppRoutes.houseModel),
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
