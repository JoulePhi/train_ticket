import 'package:flutter/cupertino.dart';

abstract class Utils {
  static var spaceV = (double hght) => SizedBox(height: hght);
  static var spaceH = (double width) => SizedBox(width: width);
  static var tStyleBold = (double size, Color color) => TextStyle(
        fontFamily: 'Jkt-ExtraBold',
        fontSize: size,
        color: color,
      );
  static var tStyleMedium = (double size, Color color) => TextStyle(
        fontFamily: 'Jkt-Medium',
        fontSize: size,
        color: color,
      );
  static var tStyleRegular = (double size, Color color) => TextStyle(
        fontFamily: 'Jkt-Regular',
        fontSize: size,
        color: color,
      );
  static var tStyleThin = (double size, Color color) => TextStyle(
      fontFamily: 'Jkt-Regular',
      fontSize: size,
      color: color,
      fontWeight: FontWeight.w400);
}
