import '../entities/simulation_entity.dart';

abstract class ISimulationRepository {
  Future<SimulationEntity> getSimulation({
    required String fullName,
    required String email,
    required int ltv,
    required double amount,
    required int term,
    required bool garanteed,
  });
}
