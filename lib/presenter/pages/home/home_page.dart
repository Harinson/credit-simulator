import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../components/bottom_buttom_component.dart';
import '../../components/text_field_component.dart';
import 'widgets/home_title_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

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
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const TextFieldComponent(
                        primaryLabel: 'Qual seu ',
                        secondaryLabel: 'nome completo?',
                        fieldHint: 'Nome completo',
                        textInputAction: TextInputAction.next,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const TextFieldComponent(
                        primaryLabel: 'E seu ',
                        secondaryLabel: 'email?',
                        fieldHint: 'seuemail@email.com',
                        keyboardType: TextInputType.emailAddress,
                        textInputAction: TextInputAction.done,
                      ),
                      const SizedBox(
                        height: 80,
                      ),
                      BottomButtomComponent(
                        text: 'Continuar',
                        onPressed: () => Modular.to.pushNamed('/first-step'),
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
