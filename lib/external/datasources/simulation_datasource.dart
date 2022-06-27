import 'dart:convert';

import 'package:dio/dio.dart';

import '../../domain/entities/simulation_entity.dart';
import '../../infra/datasources/simulation_datasource.dart';
import '../../infra/models/simulation_model.dart';

class SimulationDatasouce implements ISimulationDatasource {
  @override
  Future<SimulationEntity> getSimulation({
    required String fullName,
    required String email,
    required int ltv,
    required double amount,
    required int term,
    required bool garanteed,
  }) async {
    final bodyParameters = {
      'fullname': fullName,
      'email': email,
      'ltv': ltv,
      'amount': amount,
      'term': term,
      'has_protected_collateral': garanteed,
    };
    final response = await Dio().post(
      'https://api.rispar.com.br/acquisition/simulation',
      data: bodyParameters,
    );
    return SimulationModel.fromJson(response.data);
  }
}
