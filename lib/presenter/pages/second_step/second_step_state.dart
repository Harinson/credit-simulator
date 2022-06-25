import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SecondStepState extends ChangeNotifier {
  final parcelListenable = ValueNotifier<int>(3);
  final percentListenable = ValueNotifier<int>(20);
  final formKey = GlobalKey<FormState>();
  double? chosenValue = 0;

  Future<void> initValue() async {
    final prefs = await SharedPreferences.getInstance();
    chosenValue = prefs.getDouble('amount');
    notifyListeners();
  }

  int get parcel => parcelListenable.value;
  int get percent => percentListenable.value;
  String get chosenValueString =>
      chosenValue!.toStringAsFixed(2).replaceAll('.', ',');

  set parcel(int value) {
    parcelListenable.value = value;
  }

  set percent(int value) {
    percentListenable.value = value;
  }

  Future<void> nextPage({
    required bool isGaranteed,
  }) async {
    await saveValues(isGaranteed: isGaranteed);
    Modular.to.pushNamed('/final-step');
  }

  Future<void> saveValues({
    required bool isGaranteed,
  }) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setInt('parcel', parcel);
    prefs.setInt('percent', percent);
    prefs.setBool('isGaranteed', isGaranteed);
  }
}
