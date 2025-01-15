import 'package:flutter/material.dart';
import 'package:mackle_room_designer/core/utils/app_utils.dart';
import 'package:mackle_room_designer/data/models/filter_questions.dart';
import 'package:mackle_room_designer/presentation/routes/app_routes.dart';
import 'package:mackle_room_designer/presentation/widgets/global/global_widgets.dart';

class HouseFilterPage extends StatefulWidget {
  const HouseFilterPage({super.key});

  @override
  State<HouseFilterPage> createState() => _HouseFilterPage();
}

class _HouseFilterPage extends State<HouseFilterPage> {
  int currentQuestion = 0;

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
            Container(
              width: screenSize.width,
              height: screenSize.height,
              color: Colors.black.withOpacity(0.5),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: screenSize.width,
                  child: Center(
                    child: primaryTitleLarge(context, text: 'House Filter'),
                  ),
                ),
                Expanded(
                  child: Container(
                    width: screenSize.width * 0.8,
                    margin: const EdgeInsets.all(20),
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.black.withOpacity(0.5)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          filterQuestions[currentQuestion]['question'],
                          style:
                              Theme.of(context).textTheme.bodyLarge?.copyWith(
                                    color: Colors.white,
                                    fontSize: calculateSize(12, context),
                                  ),
                        ),
                        Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: filterQuestions[currentQuestion]
                                    ["options"]
                                .map<Widget>((option) {
                              return GestureDetector(
                                onTap: () => {
                                  print(currentQuestion),
                                  print(
                                      filterQuestions[currentQuestion].length),
                                  if (currentQuestion + 1 >=
                                      filterQuestions.length)
                                    {
                                      Navigator.pushNamed(
                                          context, AppRoutes.houseSelector),
                                    }
                                  else
                                    {
                                      setState(() {
                                        currentQuestion = currentQuestion + 1;
                                      })
                                    }
                                },
                                child: Container(
                                  width: screenSize.width * .2,
                                  height: 250,
                                  padding: const EdgeInsets.all(20.0),
                                  decoration: BoxDecoration(
                                    color: Colors.redAccent,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Center(
                                    child: Text(
                                      option[
                                          'label'], // Muestra la etiqueta de la opción
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyLarge
                                          ?.copyWith(
                                            fontWeight: FontWeight.bold,
                                            fontSize: calculateSize(8, context),
                                          ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                              );
                            }).toList(), // Convierte el iterable en una lista
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
