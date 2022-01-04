import 'package:desafio/app/core/components/custom_card.dart';
import 'package:flutter/material.dart';

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
        appBar: AppBar(
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.light_mode),
            ),
          ],
          title: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Hero(
                  tag: 'masterclass',
                  child: Image.asset(
                    "lib/assets/logo/logo.png",
                    width: 40,
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Atividades',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Flutterando Masterclass',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView.builder(
              itemCount: 5,
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
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0,
          backgroundColor: Colors.grey[900],
          unselectedItemColor: Colors.grey[700],
          selectedItemColor: Colors.white,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.task_alt_rounded),
              label: 'Atividades',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.personal_injury_outlined),
              label: 'Repositórios',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Sobre o dev',
            ),
          ],
        ),
      ),
    );
  }
}
