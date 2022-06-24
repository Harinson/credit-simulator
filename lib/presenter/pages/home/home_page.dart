import 'package:flutter/material.dart';

import '../../../core/presenter/app_state.dart';
import '../../components/bottom_buttom_component.dart';
import '../../components/text_field_component.dart';
import 'home_state.dart';
import 'widgets/home_title_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends AppState<HomePage, HomeState> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
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
              const HomeTitleWidget(),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Form(
                  key: state.formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextFieldComponent(
                        primaryLabel: 'Qual seu ',
                        secondaryLabel: 'nome completo?',
                        fieldHint: 'Nome completo',
                        textInputAction: TextInputAction.next,
                        onChanged: (value) {
                          state.name = value;
                        },
                        validator: (value) => state.validateName(value),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFieldComponent(
                        primaryLabel: 'E seu ',
                        secondaryLabel: 'email?',
                        fieldHint: 'seuemail@email.com',
                        keyboardType: TextInputType.emailAddress,
                        textInputAction: TextInputAction.done,
                        onChanged: (value) {
                          state.email = value;
                        },
                        validator: (value) => state.validateEmail(value),
                      ),
                      const SizedBox(
                        height: 80,
                      ),
                      BottomButtomComponent(
                        text: 'Continuar',
                        onPressed: () async => state.nextPage(),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
