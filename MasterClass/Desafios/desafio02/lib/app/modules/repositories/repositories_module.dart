import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'views/repositories_page.dart';

class RepositoriesModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => const RepositoriesPage()),
        WildcardRoute(
          child: (_, __) => const Scaffold(
            body: Center(
              child: Text('Pagina não encontrada'),
            ),
          ),
        )
      ];
}
