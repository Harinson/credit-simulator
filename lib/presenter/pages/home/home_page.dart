import 'package:credit_simulator/presenter/components/text_field_component.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                'assets/images/image01.png',
                fit: BoxFit.fitWidth,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
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
                          text: 'Agora',
                          style: GoogleFonts.hindGuntur(
                            fontWeight: FontWeight.bold,
                            fontSize: 26,
                            color: Colors.green,
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
                      color: Colors.black,
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                TextFieldComponent(
                  primaryLabel: 'Qual seu ',
                  secondaryLabel: 'nome completo?',
                ),
                TextFieldComponent(
                  primaryLabel: 'E seu ',
                  secondaryLabel: 'email?',
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
