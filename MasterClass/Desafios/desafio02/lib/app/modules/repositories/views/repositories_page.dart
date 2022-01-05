import 'package:desafio/app/core/components/custom_appbar.dart';
import 'package:desafio/app/core/components/custom_bottom_navigation.dart';
import 'package:flutter/material.dart';

class RepositoriesPage extends StatefulWidget {
  const RepositoriesPage({Key? key}) : super(key: key);

  @override
  _RepositoriesPageState createState() => _RepositoriesPageState();
}

class _RepositoriesPageState extends State<RepositoriesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      bottomNavigationBar: const CustomBottomNavigation(),
    );
  }
}
