import '../../domain/entities/simulation_entity.dart';
import '../../domain/repositories/simulation_repository.dart';
import '../datasources/simulation_datasource.dart';

class SimulationRepository implements ISimulationRepository {
  final ISimulationDatasource _datasource;

  SimulationRepository({
    required ISimulationDatasource datasource,
  }) : _datasource = datasource;

  @override
  Future<SimulationEntity> getSimulation({
    required String fullName,
    required String email,
    required int ltv,
    required double amount,
    required int term,
    required bool garanteed,
  }) async {
    return await _datasource.getSimulation(
      fullName: fullName,
      email: email,
      ltv: ltv,
      amount: amount,
      term: term,
      garanteed: garanteed,
    );
  }
}
