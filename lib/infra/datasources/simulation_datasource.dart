import '../../domain/entities/simulation_entity.dart';

abstract class ISimulationDatasource {
  Future<SimulationEntity> getSimulation({
    required String fullName,
    required String email,
    required int ltv,
    required double amount,
    required int term,
    required bool garanteed,
  });
}
