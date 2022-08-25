import 'package:flutter/material.dart';

class MyThemes {
  static final lightTheme = ThemeData.light().copyWith(
    appBarTheme: AppBarTheme(
       iconTheme: const IconThemeData(color: Colors.black,
    ),  )
  );

  //Dark Mode
  static final darkTheme = ThemeData.dark().copyWith(
    iconTheme: const IconThemeData(color: Colors.white )
  
  );
}
