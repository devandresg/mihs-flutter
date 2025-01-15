import 'package:flutter/material.dart';

Widget bodyContainer(BuildContext context, {required Widget child}) {
  final screenSize = MediaQuery.of(context).size;
  return Center(
    child: SizedBox(
      width: screenSize.width,
      height: screenSize.height,
      child: Center(
        child: SizedBox(
          width: screenSize.width,
          height: screenSize.height,
          child: child,
        ),
      ),
    ),
  );
}
