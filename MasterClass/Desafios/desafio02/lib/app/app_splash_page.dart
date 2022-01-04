import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppSplashPage extends StatefulWidget {
  const AppSplashPage({Key? key}) : super(key: key);

  @override
  _AppSplashPageState createState() => _AppSplashPageState();
}

class _AppSplashPageState extends State<AppSplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2)).then(
      (value) => Modular.to.pushReplacementNamed('/activities/'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Center(
        child: Hero(
          tag: 'masterclass',
          child: Image.asset("lib/assets/logo/masterclass.png"),
        ),
      ),
    );
  }
}
