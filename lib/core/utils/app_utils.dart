import 'package:flutter/material.dart';

double calculateSize(int value, BuildContext context) {
  return value * MediaQuery.of(context).size.width / 400;
}
