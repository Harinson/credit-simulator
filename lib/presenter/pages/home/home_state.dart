import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeState extends ChangeNotifier {
  final nameListenable = ValueNotifier<String>('');
  final emailListenable = ValueNotifier<String>('');
  final formKey = GlobalKey<FormState>();

  String get name => nameListenable.value;
  String get email => emailListenable.value;

  set name(String value) {
    nameListenable.value = value;
  }

  set email(String? value) {
    emailListenable.value = value!;
  }

  String? validateName(String? value) {
    if (value!.trim().isEmpty) {
      return 'Nome completo é obrigatório';
    }
    return null;
  }

  String? validateEmail(String? value) {
    if (value!.trim().isEmpty) {
      return 'Email é obrigatório';
    }
    if (!RegExp(
            r'^[a-zA-Z0-9.a-zA-Z0-9.!#$%&’*+/=?^_`{|}~-]+@[a-zA-Z0-9]+\.[a-zA-Z]+')
        .hasMatch(value)) {
      return 'Email inválido';
    }
    return null;
  }

  Future<void> nextPage() async {
    if (formKey.currentState!.validate()) {
      await saveValues();
      Modular.to.pushNamedAndRemoveUntil('/first-step', (route) => false);
    }
  }

  Future<void> saveValues() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString('fullName', name);
    prefs.setString('email', email);
  }
}
