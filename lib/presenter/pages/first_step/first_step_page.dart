import 'package:credit_simulator/presenter/components/bottom_buttom_component.dart';
import 'package:credit_simulator/presenter/components/progress_bar_component.dart';
import 'package:credit_simulator/presenter/pages/first_step/widgets/first_step_title_widget.dart';
import 'package:credit_simulator/presenter/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_fonts/google_fonts.dart';

class FirstStepPage extends StatelessWidget {
  const FirstStepPage({Key? key}) : super(key: key);

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
          progress: progress / 3,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const FirstStepTitleWidget(),
              const SizedBox(height: 20),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.6,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextField(
                      cursorColor: AppTheme.primary,
                      keyboardType: TextInputType.number,
                      style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: AppTheme.primary,
                      ),
                      decoration: InputDecoration(
                        hintText: 'R\$ 25.000',
                        hintStyle: GoogleFonts.montserrat(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
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
                ),
              ),
              BottomButtomComponent(
                text: 'Continuar',
                onPressed: () {
                  Modular.to.pushNamed('/second-step');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
