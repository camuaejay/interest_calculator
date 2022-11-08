import 'package:flutter/material.dart';


// This class contains methods for default decorations
// This class contains sample method that has optional parameters
class AppDecorations {
  Decoration defaultRoundedWithShadow(
          {Color color = Colors.white, double borderRadius = 20}) =>
      BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(borderRadius),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 10,
            offset: const Offset(0, 5), // changes position of shadow
          ),
        ],
      );
}
