import 'package:credit_simulator/presenter/components/bottom_buttom_component.dart';
import 'package:credit_simulator/presenter/components/progress_bar_component.dart';
import 'package:credit_simulator/presenter/components/slider_field_component.dart';
import 'package:credit_simulator/presenter/pages/first_step/widgets/first_step_title_widget.dart';
import 'package:credit_simulator/presenter/pages/second_step/widgets/second_step_title_widget.dart';
import 'package:credit_simulator/presenter/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SecondStepPage extends StatelessWidget {
  const SecondStepPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double progress = MediaQuery.of(context).size.width / 2;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        foregroundColor: AppTheme.primary,
        title: ProgressBarComponent(
          maxProgress: progress,
          progress: progress / 3 * 2,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SecondStepTitleWidget(),
              const SizedBox(height: 20),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.6,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SliderFieldComponent(
                      initialLabel: 'Escolha a ',
                      finalLabel: 'quantidade de parcelas',
                    ),
                    const SizedBox(height: 20),
                    SliderFieldComponent(
                      initialLabel: 'Escolha o ',
                      finalLabel: 'percentual de garantia',
                    ),
                    const SizedBox(height: 40),
                    Text(
                      'Garantia protegida',
                      style: GoogleFonts.hindGuntur(
                        fontWeight: FontWeight.bold,
                        fontSize: 26,
                        color: AppTheme.primary,
                        letterSpacing: 0.6,
                        height: 1,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'Bitcoin caiu? Fique tranquilo!'
                      'Na garantia protegida, você não '
                      'recebe chamada de margem e não é liquidado',
                      style: GoogleFonts.hindGuntur(
                        fontWeight: FontWeight.w400,
                        fontSize: 18,
                        color: AppTheme.secondary,
                        letterSpacing: 0.6,
                        height: 1,
                      ),
                    ),
                  ],
                ),
              ),
              BottomButtomComponent(
                text: 'Continuar sem garantia',
                onPressed: () {},
                isPrimary: false,
              ),
              const SizedBox(height: 10),
              BottomButtomComponent(
                text: 'Adicionar garantia',
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
