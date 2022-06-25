import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../theme/app_theme.dart';

class SecondStepTitleWidget extends StatelessWidget {
  final String value;
  const SecondStepTitleWidget({
    Key? key,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          'Valor escolhido',
          style: GoogleFonts.hindGuntur(
            fontWeight: FontWeight.bold,
            fontSize: 26,
            color: AppTheme.secondary,
            height: 1.5,
          ),
        ),
        Text(
          'R\$ $value',
          style: GoogleFonts.hindGuntur(
            fontWeight: FontWeight.bold,
            fontSize: 32,
            color: AppTheme.primary,
            height: 1,
          ),
        ),
      ],
    );
  }
}
