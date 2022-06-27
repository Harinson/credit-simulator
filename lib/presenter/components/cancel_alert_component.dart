import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_fonts/google_fonts.dart';

import '../theme/app_theme.dart';

class CancelAlertComponent extends StatelessWidget {
  const CancelAlertComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        'Tem certeza que deseja cancelar a simulação?',
        style: GoogleFonts.montserrat(
          fontWeight: FontWeight.w400,
          fontSize: 18,
          height: 1.5,
        ),
      ),
      actions: [
        FlatButton(
          color: AppTheme.primary,
          onPressed: () {
            Modular.to.pop();
          },
          child: Text(
            'Não',
            style: GoogleFonts.montserrat(
              fontWeight: FontWeight.w600,
              fontSize: 14,
              color: Colors.white,
            ),
          ),
        ),
        FlatButton(
          color: Colors.white,
          child: Text(
            'Sim',
            style: GoogleFonts.montserrat(
              fontWeight: FontWeight.w600,
              fontSize: 14,
              color: AppTheme.primary,
            ),
          ),
          onPressed: () {
            Modular.to.pushNamedAndRemoveUntil('/', (p0) => false);
          },
        ),
      ],
    );
  }
}
