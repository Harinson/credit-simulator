import 'package:credit_simulator/presenter/pages/first_step/first_step_page.dart';
import 'package:credit_simulator/presenter/pages/home/home_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../presenter/pages/second_step/second_step_page.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          '/',
          child: (ctx, args) => const HomePage(),
        ),
        ChildRoute(
          '/first-step',
          child: (ctx, args) => const FirstStepPage(),
        ),
        ChildRoute(
          '/second-step',
          child: (ctx, args) => const SecondStepPage(),
        ),
      ];
}
