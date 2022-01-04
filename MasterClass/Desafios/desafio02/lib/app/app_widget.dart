import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // provide light theme colors
        primaryColor: Colors.red,
        secondaryHeaderColor: Colors.green,
      ),
      darkTheme: ThemeData(
        // provide dark theme colors
        appBarTheme: AppBarTheme(
          color: Colors.grey[900],
        ),
        textTheme: const TextTheme(
          bodyText2: TextStyle(
            color: Colors.grey,
          ),
        ),
        backgroundColor: Colors.red,
        scaffoldBackgroundColor: Colors.grey[900],
        primaryColorDark: Colors.green,
        primaryColor: Colors.lime,
      ),
      themeMode: ThemeMode.dark,
    ).modular();
  }
}

class Theme {}
