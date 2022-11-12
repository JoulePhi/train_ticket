import 'package:flutter/material.dart';

abstract class AppColors {
  static const darkPurple = Color(0xff59597C);
  static const deepPurple = Color(0xff333E63);
  static const lBlue = Color(0xff2D9CDB);
  static const grey = Color(0xff88879C);
  static const orange = Color(0xffF47814);
  static const lTurquoise = Color.fromARGB(255, 179, 225, 252);
  static const darkBlue = Color(0xff2596D7);
  static const oGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [Color(0xffFE9B4B), Color(0xffF47814)],
  );
  static const bGradient = LinearGradient(
    begin: Alignment.topRight,
    end: Alignment.bottomLeft,
    colors: [Color(0xff85D3FF), Color(0xff2596D7)],
  );
}
