import 'package:flutter/material.dart';

Widget houseCard(BuildContext context, {onTap, houseData}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      width: 250.0,
      height: 150.0,
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.circular(3.0), // Esquinas redondeadas
      ),
      child: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: LayoutBuilder(
                    builder:
                        (BuildContext context, BoxConstraints constraints) {
                      return Container(
                        width: constraints.maxWidth * 2 / 3,
                        height: constraints.maxHeight,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3.0),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(3.0),
                          child: Image.asset(
                            houseData['imageUrl'],
                            fit: BoxFit
                                .cover, // Ajusta la imagen al tamaño del contenedor
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 5.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(right: 8.0),
                        decoration: BoxDecoration(
                          color: Theme.of(context).primaryColor,
                          borderRadius: BorderRadius.circular(3.0),
                        ),
                        child: Text(
                          houseData['name'],
                          style: Theme.of(context).textTheme.headlineSmall,
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '${houseData['bedrooms']} Bedrooms',
                              style: Theme.of(context).textTheme.labelSmall,
                            ),
                            Text(
                              '${houseData['baths']} Baths',
                              style: Theme.of(context).textTheme.labelSmall,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: houseData['other']
                                  .map<Widget>(
                                    (String item) => Text(
                                      item,
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelSmall,
                                    ),
                                  )
                                  .toList(), // Convierte el Iterable a List<Widget>
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(right: 8.0),
                        decoration: BoxDecoration(
                          color: Theme.of(context).primaryColor,
                          borderRadius: BorderRadius.circular(3.0),
                        ),
                        child: Text(
                          '${houseData['year']} Price - ${houseData['price']}',
                          style: Theme.of(context).textTheme.labelMedium,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 8.0),
          Container(
            height: 25.0,
            padding: const EdgeInsets.all(3.0),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.secondary,
              borderRadius: BorderRadius.circular(3.0),
            ),
            child: Center(
              child: Text(
                houseData['message'],
                style: Theme.of(context).textTheme.labelSmall,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
