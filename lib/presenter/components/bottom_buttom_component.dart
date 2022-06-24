import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../theme/app_theme.dart';

class BottomButtomComponent extends StatelessWidget {
  final String text;
  final void Function()? onPressed;
  final bool isPrimary;
  const BottomButtomComponent({
    Key? key,
    required this.text,
    required this.onPressed,
    this.isPrimary = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: FractionalOffset.bottomCenter,
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: 50,
        child: MaterialButton(
          onPressed: onPressed,
          color: isPrimary ? AppTheme.primary : Colors.white,
          elevation: isPrimary ? 2 : 0,
          child: Text(
            text,
            style: GoogleFonts.montserrat(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color: isPrimary ? Colors.white : AppTheme.primary,
              letterSpacing: 0.6,
            ),
          ),
        ),
      ),
    );
  }
}
