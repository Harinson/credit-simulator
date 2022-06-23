import 'package:flutter/material.dart';

class TextFieldComponent extends StatelessWidget {
  final String primaryLabel;
  final String secondaryLabel;
  const TextFieldComponent(
      {Key? key, required this.primaryLabel, required this.secondaryLabel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text.rich(
          TextSpan(
            text: primaryLabel,
            children: [
              TextSpan(text: secondaryLabel),
            ],
          ),
        ),
        TextField(
          decoration: InputDecoration(
            hintText: 'Nome completo',
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Colors.green,
              ),
            ),
            disabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Colors.green,
              ),
            ),
            border: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Colors.green,
              ),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Colors.green,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
