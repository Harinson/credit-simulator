import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../theme/app_theme.dart';

class SliderFieldComponent extends StatelessWidget {
  final String initialLabel;
  final String finalLabel;
  const SliderFieldComponent({
    Key? key,
    required this.initialLabel,
    required this.finalLabel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text.rich(
          TextSpan(
            text: initialLabel,
            style: GoogleFonts.hindGuntur(
              fontWeight: FontWeight.w400,
              fontSize: 26,
              color: AppTheme.secondary,
              height: 1.4,
            ),
            children: [
              TextSpan(
                text: finalLabel,
                style: GoogleFonts.hindGuntur(
                  fontWeight: FontWeight.bold,
                  fontSize: 26,
                  color: AppTheme.primary,
                ),
              ),
            ],
          ),
        ),
        Slider(
          value: 3,
          onChanged: (value) {},
          max: 12,
          min: 3,
          divisions: 3,
          thumbColor: AppTheme.primary,
          activeColor: AppTheme.primary,
          label: '3',
          inactiveColor: AppTheme.primary.withOpacity(0.2),
        ),
      ],
    );
  }
}
