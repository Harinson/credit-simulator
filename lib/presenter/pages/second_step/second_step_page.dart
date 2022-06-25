import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/presenter/app_state.dart';
import '../../components/bottom_buttom_component.dart';
import '../../components/progress_bar_component.dart';
import '../../components/slider_field_component.dart';
import '../../theme/app_theme.dart';
import 'second_step_state.dart';
import 'widgets/second_step_title_widget.dart';

class SecondStepPage extends StatefulWidget {
  const SecondStepPage({Key? key}) : super(key: key);

  @override
  State<SecondStepPage> createState() => _SecondStepPageState();
}

class _SecondStepPageState extends AppState<SecondStepPage, SecondStepState> {
  @override
  void initState() {
    state.initValue();

    super.initState();
  }

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
      body: Column(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SecondStepTitleWidget(
                    value: state.chosenValue!,
                  ),
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
                          divisions: 3,
                          value: state.parcel.toDouble(),
                          min: 3,
                          max: 12,
                          label: '${state.parcel}x',
                          onChanged: (value) {
                            state.parcel = value.toInt();
                            setState(() {});
                          },
                        ),
                        const SizedBox(height: 20),
                        SliderFieldComponent(
                          initialLabel: 'Escolha o ',
                          finalLabel: 'percentual de garantia',
                          divisions: 2,
                          value: state.percent.toDouble(),
                          min: 20,
                          max: 50,
                          label: '${state.percent}%',
                          onChanged: (value) {
                            state.percent = value.toInt();
                            setState(() {});
                          },
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
                          'Bitcoin caiu? Fique tranquilo! '
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
                    onPressed: () async => state.nextPage(isGaranteed: false),
                    isPrimary: false,
                  ),
                  const SizedBox(height: 10),
                  BottomButtomComponent(
                    text: 'Adicionar garantia',
                    onPressed: () async => state.nextPage(isGaranteed: true),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
