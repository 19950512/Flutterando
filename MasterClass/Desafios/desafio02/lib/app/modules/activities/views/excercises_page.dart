import 'package:flutter/material.dart';

class ExercisesPage extends StatelessWidget {
  var title;

  ExercisesPage({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
    );
  }
}
