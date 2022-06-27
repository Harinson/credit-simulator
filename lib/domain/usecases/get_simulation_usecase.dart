import '../entities/simulation_entity.dart';
import '../repositories/simulation_repository.dart';

class GetSimulationUsecase {
  final ISimulationRepository _repository;

  GetSimulationUsecase({
    required ISimulationRepository repository,
  }) : _repository = repository;

  Future<SimulationEntity> call({
    required String fullName,
    required String email,
    required int ltv,
    required double amount,
    required int term,
    required bool garanteed,
  }) async {
    return await _repository.getSimulation(
      fullName: fullName,
      email: email,
      ltv: ltv,
      amount: amount,
      term: term,
      garanteed: garanteed,
    );
  }
}
