import 'package:desafio/app/core/components/custom_appbar.dart';
import 'package:desafio/app/core/components/custom_bottom_navigation.dart';
import 'package:desafio/app/core/components/custom_card.dart';
import 'package:desafio/app/core/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ActivitiesPage extends StatefulWidget {
  const ActivitiesPage({Key? key}) : super(key: key);

  @override
  _ActivitiesPageState createState() => _ActivitiesPageState();
}

class _ActivitiesPageState extends State<ActivitiesPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
          appBar: CustomAppBar(),
          body: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView.builder(
                itemCount: 15,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      const CustomCard(
                        titleAsset: 'lib/assets/icones/running.png',
                        title: "Animações",
                        description:
                            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. ",
                        exercises: 5,
                        urlSourceCode: 'https://google.com/',
                      ),
                      Container(
                        height: 15,
                      ),
                      const CustomCard(
                        titleAsset: 'lib/assets/icones/glasses.png',
                        title: "Leitura de mockup",
                        description:
                            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. ",
                        exercises: 2,
                        urlSourceCode: 'https://google.com/',
                      ),
                      Container(
                        height: 15,
                      ),
                      const CustomCard(
                        titleAsset: 'lib/assets/icones/toys.png',
                        title: "Playground",
                        description:
                            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. ",
                        exercises: 3,
                        urlSourceCode: 'https://google.com/',
                      ),
                      Container(
                        height: 15,
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
          bottomNavigationBar: CustomBottomNavigation()),
    );
  }
}
