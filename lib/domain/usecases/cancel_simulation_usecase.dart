import 'package:flutter/material.dart';

import '../../presenter/components/cancel_alert_component.dart';

class CancelSimulationUsecase {
  void call({
    required BuildContext context,
  }) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return const CancelAlertComponent();
      },
    );
  }
}
