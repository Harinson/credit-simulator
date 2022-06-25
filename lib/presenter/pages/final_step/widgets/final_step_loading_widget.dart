import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../theme/app_theme.dart';

class FinalStepLoadingWidget extends StatelessWidget {
  const FinalStepLoadingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 50,
            width: 50,
            child: CircularProgressIndicator.adaptive(
              backgroundColor: AppTheme.primary,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            'Aguarde um momento',
            style: GoogleFonts.hindGuntur(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: AppTheme.secondary,
            ),
          ),
          Text(
            'Estamos simulando seu '
            'pedido\nde crédito Rispar...',
            style: GoogleFonts.hindGuntur(
              fontSize: 22,
              fontWeight: FontWeight.w500,
              color: AppTheme.secondary,
              height: 1,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
