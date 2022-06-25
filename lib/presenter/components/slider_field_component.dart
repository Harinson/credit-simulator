import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../theme/app_theme.dart';

class SliderFieldComponent extends StatelessWidget {
  final String initialLabel;
  final String finalLabel;
  final double value;
  final double min;
  final double max;
  final String label;
  final int divisions;
  final Function(double) onChanged;

  const SliderFieldComponent({
    Key? key,
    required this.initialLabel,
    required this.finalLabel,
    required this.value,
    required this.min,
    required this.max,
    required this.label,
    required this.divisions,
    required this.onChanged,
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
          value: value,
          onChanged: onChanged,
          max: max,
          min: min,
          divisions: divisions,
          thumbColor: AppTheme.primary,
          activeColor: AppTheme.primary,
          label: label,
          inactiveColor: AppTheme.primary.withOpacity(0.2),
        ),
      ],
    );
  }
}
