import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/presenter/app_state.dart';
import '../../components/bottom_buttom_component.dart';
import '../../components/cancel_action_component.dart';
import '../../components/progress_bar_component.dart';
import '../../theme/app_theme.dart';
import 'final_step_state.dart';
import 'widgets/final_step_body_widget.dart';
import 'widgets/final_step_loading_widget.dart';

class FinalStepPage extends StatefulWidget {
  const FinalStepPage({Key? key}) : super(key: key);

  @override
  State<FinalStepPage> createState() => _FinalStepPageState();
}

class _FinalStepPageState extends AppState<FinalStepPage, FinalStepState> {
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
        title: state.isLoading
            ? null
            : ProgressBarComponent(
                maxProgress: progress,
                progress: progress,
              ),
        actions: [
          CancelActionComponent(
            onTap: () => state.cancelSimulation(context: context),
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          state.isLoading
              ? const FinalStepLoadingWidget()
              : SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Resultado da simulação',
                          style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                          ),
                        ),
                        const SizedBox(height: 50),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.6,
                          child: FinalStepBodyWidget(
                            simulation: state.simulation,
                          ),
                        ),
                        BottomButtomComponent(
                          text: 'Nova simulação',
                          onPressed: () => state.newSimulation(),
                        ),
                        const SizedBox(height: 20),
                      ],
                    ),
                  ),
                ),
        ],
      ),
    );
  }
}
