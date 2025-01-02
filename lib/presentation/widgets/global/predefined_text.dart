import 'package:flutter/material.dart';

Widget primaryTitleLarge(BuildContext context, {text}) {
  return Text(
    text,
    style: Theme.of(context).textTheme.titleLarge,
  );
}
