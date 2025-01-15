import 'package:flutter/material.dart';
import 'package:mackle_room_designer/core/utils/app_utils.dart';

Widget primaryTitleLarge(BuildContext context, {text}) {
  return Text(
    text,
    style: Theme.of(context)
        .textTheme
        .titleLarge
        ?.copyWith(fontSize: calculateSize(32, context)),
  );
}
