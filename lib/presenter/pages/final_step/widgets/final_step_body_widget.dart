import 'package:flutter/material.dart';

import '../../../../domain/entities/simulation_entity.dart';
import 'final_step_line_widget.dart';

class FinalStepBodyWidget extends StatelessWidget {
  final SimulationEntity simulation;
  const FinalStepBodyWidget({
    Key? key,
    required this.simulation,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FinalStepLineWidget(
          title: 'Valor escolhido',
          value: simulation.formattedNetValue,
        ),
        FinalStepLineWidget(
          title: 'Garantia',
          value: simulation.formattedCollateral,
        ),
        FinalStepLineWidget(
          title: 'Taxa de juros',
          value: simulation.formattedInterestRate,
        ),
        FinalStepLineWidget(
          title: 'Percentual de garantia',
          value: simulation.formattedLtv,
        ),
        FinalStepLineWidget(
          title: 'Primeiro vencimento',
          value: simulation.formattedFirstDueDate,
        ),
        FinalStepLineWidget(
          title: 'IOF',
          value: simulation.formattedIofFee,
        ),
        FinalStepLineWidget(
          title: 'Tarifa da plataforma',
          value: simulation.formattedOriginationFee,
        ),
        FinalStepLineWidget(
          title: 'Total financiado',
          value: simulation.formattedContractValue,
        ),
        FinalStepLineWidget(
          title: 'CET mensal',
          value: simulation.formatedMonthlyRate,
        ),
        FinalStepLineWidget(
          title: 'CET anual',
          value: simulation.formatedAnnualRate,
        ),
        FinalStepLineWidget(
          title: 'Cotação do BTC',
          value: simulation.formattedCollateralUnitPrice,
        ),
      ],
    );
  }
}
