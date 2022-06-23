import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../theme/app_theme.dart';

class FirstStepTitleWidget extends StatelessWidget {
  const FirstStepTitleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text.rich(
          TextSpan(
            text: 'De quanto ',
            style: GoogleFonts.hindGuntur(
              fontWeight: FontWeight.bold,
              fontSize: 26,
              color: AppTheme.primary,
              height: 1.4,
            ),
            children: [
              TextSpan(
                text: 'você precisa?',
                style: GoogleFonts.hindGuntur(
                  fontWeight: FontWeight.bold,
                  fontSize: 26,
                  color: AppTheme.secondary,
                ),
              ),
            ],
          ),
        ),
        Text.rich(
          TextSpan(
            text: 'Insira um valor entre ',
            style: GoogleFonts.hindGuntur(
              fontWeight: FontWeight.w400,
              fontSize: 16,
              height: 1.4,
            ),
            children: [
              TextSpan(
                text: 'R\$ 500 ',
                style: GoogleFonts.hindGuntur(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: AppTheme.secondary,
                ),
                children: [
                  TextSpan(
                    text: 'a ',
                    style: GoogleFonts.hindGuntur(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: AppTheme.secondary,
                    ),
                    children: [
                      TextSpan(
                        text: 'R\$ 300.000',
                        style: GoogleFonts.hindGuntur(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: AppTheme.secondary,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
