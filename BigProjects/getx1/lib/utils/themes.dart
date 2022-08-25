import 'package:flutter/material.dart';

class Themes {
  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    textTheme:const  TextTheme(
      headline1: TextStyle(
        color: Colors.black,
        fontSize: 26,
      ),
      headline2: TextStyle(
        color: Colors.black,
        fontSize: 15,
      ),
    ),
    iconTheme: const IconThemeData(color : Colors.black, size:20 )
  );


  //Dark Mode
  static final darkTheme = ThemeData(
    scaffoldBackgroundColor: const Color.fromARGB(255, 21, 21, 21),
    textTheme:const  TextTheme(
      headline1: TextStyle(
        color: Colors.white,
        fontSize: 26,
      ),
      headline2: TextStyle(
        color: Colors.white,
        fontSize: 15,
      ),
    ),
    iconTheme: const IconThemeData(color : Colors.white, size:20 )
  );
}
