import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mackle_room_designer/core/theme/app_theme.dart';
import 'package:mackle_room_designer/core/utils/app_utils.dart';
import 'package:mackle_room_designer/presentation/routes/app_routes.dart';
import 'package:mackle_room_designer/presentation/widgets/global/buttons.dart';

Widget houseDescriptionBuy(BuildContext context, {houseData}) {
  dynamic screenSize = MediaQuery.of(context).size;
  final TextEditingController _emailController = TextEditingController();
  return Container(
    width: screenSize.width,
    height: screenSize.height,
    decoration: BoxDecoration(
      color: Colors.black.withOpacity(0.5),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          width: screenSize.width * 0.45,
          height: screenSize.height * 0.9,
          decoration: BoxDecoration(
            color: AppColors.pastel500,
            borderRadius: BorderRadius.circular(3.0),
          ),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  spacing: 10.0,
                  children: [
                    Text(
                      "Your configuration",
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge
                          ?.copyWith(fontSize: calculateSize(12, context)),
                    ),
                    SizedBox(
                      width: screenSize.width / 3,
                      child: GridView.builder(
                        shrinkWrap: true,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 4, // Número de columnas
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
                                    .bodySmall
                                    ?.copyWith(
                                        fontSize: calculateSize(4, context)),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Price \$ ${houseData['price']}",
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge
                                ?.copyWith(
                                    fontSize: calculateSize(12, context)),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            spacing: 20,
                            children: [
                              // Text field
                              Container(
                                width: 300,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(3.0),
                                  color: Colors.white,
                                ),
                                child: TextField(
                                  controller: _emailController,
                                  decoration: InputDecoration(
                                    contentPadding: const EdgeInsets.all(5),
                                    labelText: 'Email',
                                    hintText: 'Enter an email',
                                    hintStyle: Theme.of(context)
                                        .textTheme
                                        .bodyLarge
                                        ?.copyWith(
                                            color: Colors
                                                .black87), // Poner el hint en cursiva
                                    labelStyle: Theme.of(context)
                                        .textTheme
                                        .bodyLarge
                                        ?.copyWith(color: Colors.black87),
                                  ),
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyLarge
                                      ?.copyWith(color: Colors.black87),
                                ),
                              ),
                              const SizedBox(width: 8),
                              primaryButtonMedium(
                                context,
                                title: "Buy",
                                onPressed: () => Navigator.pushNamed(
                                    context, AppRoutes.homePage),
                              ),
                            ],
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
  );
}
