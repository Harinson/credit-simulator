import 'package:flutter_modular/flutter_modular.dart';

import '../../presenter/pages/final_step/final_step_page.dart';
import '../../presenter/pages/final_step/final_step_state.dart';
import '../../presenter/pages/first_step/first_step_page.dart';
import '../../presenter/pages/first_step/first_step_state.dart';
import '../../presenter/pages/home/home_page.dart';
import '../../presenter/pages/home/home_state.dart';
import '../../presenter/pages/second_step/second_step_page.dart';
import '../../presenter/pages/second_step/second_step_state.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [
        Bind(
          (i) => HomeState(),
        ),
        Bind(
          (i) => FirstStepState(),
        ),
        Bind(
          (i) => SecondStepState(),
        ),
        Bind(
          (i) => FinalStepState(),
        ),
      ];

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
        ChildRoute(
          '/final-step',
          child: (context, args) => const FinalStepPage(),
        )
      ];
}
