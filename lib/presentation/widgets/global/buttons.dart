import 'package:flutter/material.dart';
import 'package:mackle_room_designer/core/utils/app_utils.dart';

Widget primaryButtonLarge(BuildContext context, {title, onPressed}) {
  return ElevatedButton(
    onPressed: onPressed,
    style: ElevatedButton.styleFrom(
      backgroundColor: Theme.of(context).primaryColor,
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
    ),
    child: Text(
      title,
      style: Theme.of(context)
          .textTheme
          .titleLarge
          ?.copyWith(color: Colors.white, fontSize: calculateSize(18, context)),
    ),
  );
}

Widget primaryButtonMedium(BuildContext context, {title, onPressed}) {
  return ElevatedButton(
    onPressed: onPressed,
    style: ElevatedButton.styleFrom(
      backgroundColor: Theme.of(context).primaryColor,
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
    ),
    child: Text(
      title,
      style: Theme.of(context)
          .textTheme
          .titleLarge
          ?.copyWith(color: Colors.white, fontSize: calculateSize(14, context)),
    ),
  );
}
