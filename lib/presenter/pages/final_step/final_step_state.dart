import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../domain/entities/simulation_entity.dart';
import '../../../domain/usecases/get_simulation_usecase.dart';

class FinalStepState extends ChangeNotifier {
  final GetSimulationUsecase _getSimulationUsecase;

  bool isLoading = true;
  ValueListenable<SimulationEntity>? simulationListenable;

  FinalStepState({
    required GetSimulationUsecase getSimulationUsecase,
  }) : _getSimulationUsecase = getSimulationUsecase {
    _getSimulation();
  }

  SimulationEntity get simulation => simulationListenable!.value;

  set simulation(SimulationEntity value) {
    simulationListenable = ValueNotifier(value);
  }

  Future<void> _getSimulation() async {
    final prefs = await SharedPreferences.getInstance();
    final result = await _getSimulationUsecase(
      fullName: prefs.getString('fullName')!,
      email: prefs.getString('email')!,
      ltv: prefs.getInt('percent')!,
      amount: prefs.getDouble('amount')!,
      term: prefs.getInt('parcel')!,
      garanteed: prefs.getBool('isGaranteed')!,
    );
    simulation = result;
    isLoading = false;
    notifyListeners();
  }
}
