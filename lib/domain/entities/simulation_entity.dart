import 'package:equatable/equatable.dart';

class SimulationEntity extends Equatable {
  final String fullName;
  final String email;
  final num ltv;
  final num contractValue;
  final num netValue;
  final num installmentValue;
  final num lastInstallmentValue;
  final num iofFee;
  final num originationFee;
  final num term;
  final num collateral;
  final num collateralInBrl;
  final num collateralUnitPrice;
  final String firstDueDate;
  final String lastDueDate;
  final num interestRate;
  final num monthlyRate;
  final num annualRate;

  const SimulationEntity({
    required this.fullName,
    required this.email,
    required this.ltv,
    required this.contractValue,
    required this.netValue,
    required this.installmentValue,
    required this.lastInstallmentValue,
    required this.iofFee,
    required this.originationFee,
    required this.term,
    required this.collateral,
    required this.collateralInBrl,
    required this.collateralUnitPrice,
    required this.firstDueDate,
    required this.lastDueDate,
    required this.interestRate,
    required this.monthlyRate,
    required this.annualRate,
  });
  @override
  List<Object?> get props => [
        fullName,
        email,
        ltv,
        contractValue,
        netValue,
        installmentValue,
        lastInstallmentValue,
        iofFee,
        originationFee,
        term,
        collateral,
        collateralInBrl,
        collateralUnitPrice,
        firstDueDate,
        lastDueDate,
        interestRate,
        monthlyRate,
        annualRate,
      ];

  SimulationEntity copyWith({
    String? fullName,
    String? email,
    num? ltv,
    num? contractValue,
    num? netValue,
    num? installmentValue,
    num? lastInstallmentValue,
    num? iofFee,
    num? originationFee,
    num? term,
    num? collateral,
    num? collateralInBrl,
    num? collateralUnitPrice,
    String? firstDueDate,
    String? lastDueDate,
    num? interestRate,
    num? monthlyRate,
    num? annualRate,
  }) {
    return SimulationEntity(
      fullName: fullName ?? this.fullName,
      email: email ?? this.email,
      ltv: ltv ?? this.ltv,
      contractValue: contractValue ?? this.contractValue,
      netValue: netValue ?? this.netValue,
      installmentValue: installmentValue ?? this.installmentValue,
      lastInstallmentValue: lastInstallmentValue ?? this.lastInstallmentValue,
      iofFee: iofFee ?? this.iofFee,
      originationFee: originationFee ?? this.originationFee,
      term: term ?? this.term,
      collateral: collateral ?? this.collateral,
      collateralInBrl: collateralInBrl ?? this.collateralInBrl,
      collateralUnitPrice: collateralUnitPrice ?? this.collateralUnitPrice,
      firstDueDate: firstDueDate ?? this.firstDueDate,
      lastDueDate: lastDueDate ?? this.lastDueDate,
      interestRate: interestRate ?? this.interestRate,
      monthlyRate: monthlyRate ?? this.monthlyRate,
      annualRate: annualRate ?? this.annualRate,
    );
  }
}
