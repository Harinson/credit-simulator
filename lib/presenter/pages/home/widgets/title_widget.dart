import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../theme/app_theme.dart';

class TitleWidget extends StatelessWidget {
  const TitleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text.rich(
            TextSpan(
              text: 'Simule ',
              style: GoogleFonts.hindGuntur(
                fontWeight: FontWeight.bold,
                fontSize: 26,
                height: 1,
              ),
              children: [
                TextSpan(
                  text: 'agora',
                  style: GoogleFonts.hindGuntur(
                    fontWeight: FontWeight.bold,
                    fontSize: 26,
                    color: AppTheme.primary,
                  ),
                ),
              ],
            ),
          ),
          Text(
            'Crédito rápido, fácil e seguro! :)',
            style: GoogleFonts.hindGuntur(
              fontWeight: FontWeight.w400,
              fontSize: 16,
              color: AppTheme.secondary,
            ),
          )
        ],
      ),
    );
  }
}
