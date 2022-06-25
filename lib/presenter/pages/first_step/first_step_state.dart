import 'package:currency_text_input_formatter/currency_text_input_formatter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FirstStepState extends ChangeNotifier {
  final formKey = GlobalKey<FormState>();
  final formatterAmount = CurrencyTextInputFormatter(
    decimalDigits: 2,
    locale: 'pt_BR',
    symbol: 'R\$',
  );

  String? validateAmount(String? value) {
    if (value!.trim().isEmpty) {
      return 'Valor é obrigatório';
    }
    if (formatterAmount.getUnformattedValue() < 500) {
      return 'Valor mínimo de R\$500';
    }
    if (formatterAmount.getUnformattedValue() > 300000) {
      return 'Valor máximo de R\$300.000';
    }
    return null;
  }

  Future<void> nextPage() async {
    if (formKey.currentState!.validate()) {
      await saveValues();
      Modular.to.pushNamed('/second-step');
    }
  }

  Future<void> saveValues() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setDouble('amount', formatterAmount.getUnformattedValue().toDouble());
  }
}
