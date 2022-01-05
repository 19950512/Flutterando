import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../constants.dart';

class CustomBottomNavigation extends StatefulWidget {
  const CustomBottomNavigation({Key? key}) : super(key: key);

  @override
  _CustomBottomNavigationState createState() => _CustomBottomNavigationState();
}

class _CustomBottomNavigationState extends State<CustomBottomNavigation> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 70,
      child: Padding(
        padding: const EdgeInsets.all(Constants.padding),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {
                Modular.to.pushReplacementNamed('/activities/');
              },
              icon: const Icon(Icons.local_activity),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5.0),
              child: VerticalDivider(
                width: 1,
                thickness: 1,
                color: Theme.of(context).highlightColor,
              ),
            ),
            IconButton(
              onPressed: () {
                Modular.to.pushReplacementNamed('/repositories/');
              },
              icon: const Icon(Icons.gite_rounded),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5.0),
              child: VerticalDivider(
                width: 1,
                thickness: 1,
                color: Theme.of(context).highlightColor,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.person),
            ),
          ],
        ),
      ),
    );
  }
}
