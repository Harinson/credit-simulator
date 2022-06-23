import 'package:credit_simulator/presenter/components/bottom_buttom_component.dart';
import 'package:credit_simulator/presenter/components/text_field_component.dart';
import 'package:credit_simulator/presenter/pages/home/widgets/title_widget.dart';
import 'package:flutter/material.dart';

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
              const TitleWidget(),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Form(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      TextFieldComponent(
                        primaryLabel: 'Qual seu ',
                        secondaryLabel: 'nome completo?',
                        fieldHint: 'Nome completo',
                        textInputAction: TextInputAction.next,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFieldComponent(
                        primaryLabel: 'E seu ',
                        secondaryLabel: 'email?',
                        fieldHint: 'seuemail@email.com',
                        keyboardType: TextInputType.emailAddress,
                        textInputAction: TextInputAction.done,
                      ),
                      SizedBox(
                        height: 80,
                      ),
                      BottomButtomComponent(),
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
