import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../theme/app_theme.dart';

class TextFieldComponent extends StatelessWidget {
  final String primaryLabel;
  final String secondaryLabel;
  final String fieldHint;
  final TextInputAction textInputAction;
  final TextInputType keyboardType;
  final void Function(String)? onChanged;
  final String? Function(String?)? validator;

  const TextFieldComponent({
    Key? key,
    required this.primaryLabel,
    required this.secondaryLabel,
    required this.fieldHint,
    required this.textInputAction,
    this.keyboardType = TextInputType.text,
    this.onChanged,
    this.validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text.rich(
          TextSpan(
            text: primaryLabel,
            style: GoogleFonts.montserrat(
              fontWeight: FontWeight.w400,
              fontSize: 14,
              color: AppTheme.secondary,
              height: 1,
            ),
            children: [
              TextSpan(
                text: secondaryLabel,
                style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  color: AppTheme.secondary,
                ),
              ),
            ],
          ),
        ),
        TextFormField(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          onChanged: onChanged,
          validator: validator,
          textInputAction: textInputAction,
          keyboardType: keyboardType,
          cursorColor: AppTheme.primary,
          style: GoogleFonts.montserrat(
            fontWeight: FontWeight.bold,
            fontSize: 16,
            color: AppTheme.primary,
          ),
          decoration: InputDecoration(
            hintText: fieldHint,
            hintStyle: GoogleFonts.montserrat(
              fontWeight: FontWeight.w500,
              fontSize: 16,
              color: AppTheme.grey[600],
            ),
            focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(
                color: AppTheme.primary,
                style: BorderStyle.solid,
                width: 2,
              ),
            ),
            errorBorder: const UnderlineInputBorder(
              borderSide: BorderSide(
                color: AppTheme.red,
                style: BorderStyle.solid,
                width: 2,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
