import 'package:credit_simulator/infra/models/simulation_model.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test(
    'create from json',
    () {
      final fake = SimulationModel.fake();

      final json = {
        'fullname': fake.fullName,
        'email': fake.email,
        'ltv': fake.ltv,
        'contract_value': fake.contractValue,
        'net_value': fake.netValue,
        'installment_value': fake.installmentValue,
        'last_installment_value': fake.lastInstallmentValue,
        'iof_fee': fake.iofFee,
        'origination_fee': fake.originationFee,
        'term': fake.term,
        'collateral': fake.collateral,
        'collateral_in_brl': fake.collateralInBrl,
        'collateral_unit_price': fake.collateralUnitPrice,
        'first_due_date': fake.firstDueDate.toIso8601String(),
        'last_due_date': fake.lastDueDate.toIso8601String(),
        'interest_rate': fake.interestRate,
        'monthly_rate': fake.monthlyRate,
        'annual_rate': fake.annualRate,
      };

      final simulation = SimulationModel.fromJson(json);

      expect(simulation, isA<SimulationModel>());
      expect(simulation, equals(fake));
    },
  );

  test('Create a fake model', () {
    final simulation = SimulationModel.fake();

    expect(simulation, isA<SimulationModel>());

    final otherSimulation = SimulationModel.fake();

    expect(otherSimulation, isNot(simulation));
  });
}
