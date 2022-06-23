import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../theme/app_theme.dart';

class BottomButtomComponent extends StatelessWidget {
  const BottomButtomComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: FractionalOffset.bottomCenter,
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: 50,
        child: MaterialButton(
          onPressed: () {},
          color: AppTheme.primary,
          child: Text(
            'Continuar',
            style: GoogleFonts.montserrat(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color: Colors.white,
              letterSpacing: 0.6,
            ),
          ),
        ),
      ),
    );
  }
}
