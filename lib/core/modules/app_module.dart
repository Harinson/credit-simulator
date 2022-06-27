import 'package:flutter_modular/flutter_modular.dart';

import '../../domain/repositories/simulation_repository.dart';
import '../../domain/usecases/cancel_simulation_usecase.dart';
import '../../domain/usecases/get_simulation_usecase.dart';
import '../../external/datasources/simulation_datasource.dart';
import '../../infra/datasources/simulation_datasource.dart';
import '../../infra/repositories/simulation_repository.dart';
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
        Bind<ISimulationDatasource>(
          (i) => SimulationDatasouce(),
        ),
        Bind<ISimulationRepository>(
          (i) => SimulationRepository(
            datasource: i.get(),
          ),
        ),
        Bind(
          (i) => GetSimulationUsecase(
            repository: i.get(),
          ),
        ),
        Bind(
          (i) => CancelSimulationUsecase(),
        ),
        Bind(
          (i) => HomeState(),
        ),
        Bind(
          (i) => FirstStepState(
            cancelSimulationUsecase: i.get(),
          ),
        ),
        Bind(
          (i) => SecondStepState(
            cancelSimulationUsecase: i.get(),
          ),
        ),
        Bind(
          (i) => FinalStepState(
            getSimulationUsecase: i.get(),
            cancelSimulationUsecase: i.get(),
          ),
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
