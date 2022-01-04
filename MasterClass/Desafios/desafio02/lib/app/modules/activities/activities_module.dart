import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'views/activities_page.dart';
import 'views/excercises_page.dart';

class ActivitiesModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => const ActivitiesPage()),
        ChildRoute('/exercises/:title',
            child: (context, args) => ExercisesPage(
                  title: args.queryParams['title'] ?? 'Desconhecido',
                )),
        WildcardRoute(
          child: (_, __) => const Scaffold(
            body: Center(
              child: Text('Pagina não encontrada'),
            ),
          ),
        )
      ];
}
