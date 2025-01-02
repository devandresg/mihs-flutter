import 'package:flutter/material.dart';

Widget bodyContainer(BuildContext context, {child}) {
  final screenSize = MediaQuery.of(context).size;
  return Center(
    child: SizedBox(
      width: screenSize.width,
      height: screenSize.height,
      child: Center(
        child: Container(
          width: screenSize.width * 0.8,
          height: screenSize.height * 0.8,
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.onSurface,
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: child,
            ),
          ),
        ),
      ),
    ),
  );
}
