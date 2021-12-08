import 'package:flutter/material.dart';

import 'login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Masterclass',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
      ),
      home: const LoginPage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              color: Colors.red,
              height: 100,
              width: 100,
            ),
            Container(
              color: Colors.purple,
              height: 100,
              width: 100,
            ),
            Container(
              color: Colors.yellow,
              height: 100,
              width: 100,
            ),
            Container(
              color: Colors.lime,
              height: 100,
              width: 100,
            ),
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  color: Colors.blue,
                  height: 100,
                  width: 100,
                ),
                Container(
                  color: Colors.grey,
                  height: 90,
                  width: 90,
                ),
                Container(
                  color: Colors.black,
                  height: 50,
                  width: 50,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
