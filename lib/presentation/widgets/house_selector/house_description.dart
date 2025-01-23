import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mackle_room_designer/core/theme/app_theme.dart';
import 'package:mackle_room_designer/core/utils/app_utils.dart';
import 'package:mackle_room_designer/presentation/routes/app_routes.dart';
import 'package:mackle_room_designer/presentation/widgets/global/buttons.dart';

Widget houseDescription(BuildContext context, {houseData}) {
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
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            houseData["name"],
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge
                                ?.copyWith(
                                    fontSize: calculateSize(18, context)),
                          ),
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
                            'The Constellation is a cozy yet modern home designed by the Mackle Brothers, radiating a celestial charm that lives up to its name.',
                            style: Theme.of(context)
                                .textTheme
                                .labelMedium
                                ?.copyWith(
                                    color: Colors.black87,
                                    fontSize: calculateSize(4, context)),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Align(
                                alignment: Alignment.center,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(3.0),
                                  child: Image.asset("assets/img/plane.png"),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10.0),
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
                                              fontSize:
                                                  calculateSize(10, context)),
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
                                                    fontSize: calculateSize(
                                                        3, context)),
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
                                                    fontSize: calculateSize(
                                                        3, context)),
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
                                                  fontSize:
                                                      calculateSize(3, context),
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
                                                  fontSize:
                                                      calculateSize(3, context),
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
                                                  fontSize:
                                                      calculateSize(3, context),
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
                                                  fontSize:
                                                      calculateSize(3, context),
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
                                                  fontSize:
                                                      calculateSize(3, context),
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
                                                  fontSize:
                                                      calculateSize(3, context),
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
                                                  fontSize:
                                                      calculateSize(3, context),
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
                                                  fontSize:
                                                      calculateSize(3, context),
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
