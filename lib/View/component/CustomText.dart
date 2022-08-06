import 'package:flutter/material.dart';
import '../../constant.dart';

CustomText({
  required String text,
  double? fontSize = 14.0,
  Color? color = kBlackColor,
  FontWeight? fontWeight = FontWeight.normal,
  TextDecoration decoration = TextDecoration.none,
  int? maxLines = 1,
  TextAlign textAlign = TextAlign.start,
}) {
  return Text(
    text,
    maxLines: maxLines,
    overflow: TextOverflow.ellipsis,
    textAlign: textAlign,
    style: TextStyle(
      fontSize: fontsubtitle,
      color: color,
      fontWeight: fontWeight,
      decoration: decoration,
      decorationColor: orangelight,

    ),
  );
}