import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../constants.dart';

class CustomCard extends StatelessWidget {
  final String title;
  final String titleAsset;
  final String description;
  final int exercises;
  final String urlSourceCode;

  const CustomCard(
      {Key? key,
      required this.title,
      required this.titleAsset,
      required this.description,
      required this.exercises,
      required this.urlSourceCode})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Modular.to.pushNamed('./exercises/?title=$title'),
      child: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.grey[800],
          borderRadius:
              const BorderRadius.all(Radius.circular(Constants.radius)),
        ),
        child: Column(
          children: [
            // Superior
            Padding(
              padding: const EdgeInsets.all(Constants.padding),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(right: Constants.padding),
                        child: Container(
                          width: 41,
                          height: 41,
                          decoration: BoxDecoration(
                            color: Colors.blue[800],
                            borderRadius:
                                const BorderRadius.all(Radius.circular(50.0)),
                          ),
                          child: Image.asset(titleAsset),
                        ),
                      ),
                      Text(
                        title,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Text(
                        'Exercícios: ',
                        style: TextStyle(
                          fontSize: 11,
                        ),
                      ),
                      Text(
                        '$exercises',
                        style: const TextStyle(
                          fontSize: 11,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),

            // Middle
            Padding(
              padding: const EdgeInsets.all(Constants.padding),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Text(
                  description,
                  textAlign: TextAlign.start,
                  style: const TextStyle(
                    fontSize: 13,
                  ),
                ),
              ),
            ),

            // Inferior
            Padding(
              padding: const EdgeInsets.all(Constants.padding),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(right: Constants.padding),
                        child: Image.asset(
                          "lib/assets/networks/github.png",
                          width: 18,
                        ),
                      ),
                      const Text(
                        'Acessar código fonte',
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      'Ver mais',
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(Constants.radius),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
