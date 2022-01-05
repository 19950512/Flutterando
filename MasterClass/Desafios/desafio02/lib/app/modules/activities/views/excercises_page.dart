import 'package:desafio/app/core/components/custom_appbar.dart';
import 'package:flutter/material.dart';

class ExercisesPage extends StatelessWidget {
  var title;

  ExercisesPage({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: CustomAppBar());
  }
}
