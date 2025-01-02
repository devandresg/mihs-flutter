import 'package:flutter/material.dart';

Widget primaryButtonLarge(BuildContext context, {title, onPressed}) {
  return ElevatedButton(
    onPressed: onPressed,
    style: ElevatedButton.styleFrom(
      backgroundColor: Theme.of(context).primaryColor,
    ),
    child: Text(
      title,
      style: Theme.of(context).textTheme.titleSmall,
    ),
  );
}
