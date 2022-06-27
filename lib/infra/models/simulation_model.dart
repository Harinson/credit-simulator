import 'package:faker/faker.dart';

import '../../domain/entities/simulation_entity.dart';

class SimulationModel extends SimulationEntity {
  const SimulationModel({
    required String fullName,
    required String email,
    required num ltv,
    required num contractValue,
    required num netValue,
    required num installmentValue,
    required num lastInstallmentValue,
    required num iofFee,
    required num originationFee,
    required num term,
    required num collateral,
    required num collateralInBrl,
    required num collateralUnitPrice,
    required DateTime firstDueDate,
    required DateTime lastDueDate,
    required num interestRate,
    required num monthlyRate,
    required num annualRate,
  }) : super(
          fullName: fullName,
          email: email,
          ltv: ltv,
          contractValue: contractValue,
          netValue: netValue,
          installmentValue: installmentValue,
          lastInstallmentValue: lastInstallmentValue,
          iofFee: iofFee,
          originationFee: originationFee,
          term: term,
          collateral: collateral,
          collateralInBrl: collateralInBrl,
          collateralUnitPrice: collateralUnitPrice,
          firstDueDate: firstDueDate,
          lastDueDate: lastDueDate,
          interestRate: interestRate,
          monthlyRate: monthlyRate,
          annualRate: annualRate,
        );

  factory SimulationModel.fromJson(Map<String, dynamic> json) {
    return SimulationModel(
      fullName: json['fullname'],
      email: json['email'],
      ltv: json['ltv'],
      contractValue: json['contract_value'],
      netValue: json['net_value'],
      installmentValue: json['installment_value'],
      lastInstallmentValue: json['last_installment_value'],
      iofFee: json['iof_fee'],
      originationFee: json['origination_fee'],
      term: json['term'],
      collateral: json['collateral'],
      collateralInBrl: json['collateral_in_brl'],
      collateralUnitPrice: json['collateral_unit_price'],
      firstDueDate: DateTime.parse(json['first_due_date']),
      lastDueDate: DateTime.parse(json['last_due_date']),
      interestRate: json['interest_rate'],
      monthlyRate: json['monthly_rate'],
      annualRate: json['annual_rate'],
    );
  }

  factory SimulationModel.fake() {
    return SimulationModel(
      fullName: faker.person.name(),
      email: faker.internet.email(),
      ltv: faker.randomGenerator.decimal(min: 0, scale: 2),
      contractValue: faker.randomGenerator.decimal(min: 0, scale: 2),
      netValue: faker.randomGenerator.decimal(min: 0, scale: 2),
      installmentValue: faker.randomGenerator.decimal(min: 0, scale: 2),
      lastInstallmentValue: faker.randomGenerator.decimal(min: 0, scale: 2),
      iofFee: faker.randomGenerator.decimal(min: 0, scale: 2),
      originationFee: faker.randomGenerator.decimal(min: 0, scale: 2),
      term: faker.randomGenerator.integer(100),
      collateral: faker.randomGenerator.decimal(min: 0, scale: 2),
      collateralInBrl: faker.randomGenerator.decimal(min: 0, scale: 2),
      collateralUnitPrice: faker.randomGenerator.decimal(min: 0, scale: 2),
      firstDueDate: DateTime.now(),
      lastDueDate: DateTime.now(),
      interestRate: faker.randomGenerator.decimal(min: 0, scale: 2),
      monthlyRate: faker.randomGenerator.decimal(min: 0, scale: 2),
      annualRate: faker.randomGenerator.decimal(min: 0, scale: 2),
    );
  }
}
