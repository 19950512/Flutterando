import 'package:flutter/material.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  CustomAppBar({
    Key? key,
  })  : preferredSize = const Size.fromHeight(kToolbarHeight),
        super(key: key);

  @override
  final Size preferredSize; // default is 56.0

  @override
  _CustomAppBarState createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
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
            children: [
              Text(
                'Atividades',
                style: Theme.of(context).textTheme.headline6,
              ),
              Text(
                'Flutterando Masterclass',
                style: Theme.of(context).textTheme.headline5,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
