import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

abstract class AppState<TWidget extends StatefulWidget,
    TBind extends ChangeNotifier> extends State<TWidget> {
  final TBind _state = Modular.get<TBind>();

  TBind get state => _state;

  bool get needDispose => true;

  @override
  void initState() {
    super.initState();

    // ignore: avoid_returning_null_for_void
    _state.addListener(() => setState(() => null));
  }

  @override
  void dispose() {
    super.dispose();

    if (needDispose) {
      Modular.dispose<TBind>();
    }
  }
}
