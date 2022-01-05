import 'package:flutter/material.dart';

import '../constants.dart';

class Themes {
  static ThemeData get dark => ThemeData(
        // provide dark theme colors
        appBarTheme: AppBarTheme(
          color: Colors.grey[900],
        ),
        textTheme: const TextTheme(
          headline3: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w400,
            color: Colors.white,
          ),
          headline5: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: Colors.white,
          ),
          headline6: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
          bodyText2: TextStyle(
            color: Colors.grey,
          ),
        ),
        backgroundColor: Colors.red,
        scaffoldBackgroundColor: Colors.grey[900],
        primaryColorDark: Colors.green,
        primaryColor: Colors.lime,

        cardColor: Colors.grey[800],
        cardTheme: CardTheme(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(Constants.radius),
          ),
        ),

        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            primary: Constants.colors['primary'],
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(Constants.radius),
            ),
          ),
        ),
      );
}
