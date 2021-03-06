import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'modules/activities/activities_module.dart';
import 'app_splash_page.dart';
import 'modules/repositories/repositories_module.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => const AppSplashPage()),
        ModuleRoute('/activities', module: ActivitiesModule()),
        ModuleRoute('/repositories', module: RepositoriesModule()),
        WildcardRoute(
          child: (_, __) => const Scaffold(
            body: Center(
              child: Text('Pagina não encontrada'),
            ),
          ),
        )
      ];
}
