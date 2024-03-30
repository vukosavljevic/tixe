import 'package:flutter/material.dart';
import 'package:tixehr/constants/colors.dart';
import 'package:tixehr/screens/widgets/button_widget.dart';
import 'package:tixehr/screens/widgets/text_field.dart';

class THRegisterScreen extends StatefulWidget {
  const THRegisterScreen({super.key});

  @override
  State<THRegisterScreen> createState() => _THRegisterScreenState();
}

class _THRegisterScreenState extends State<THRegisterScreen> {
  int currentStepIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: THColors.darkColor,
        body: Theme(
            data: Theme.of(context).copyWith(
              canvasColor: THColors.darkColor,
              colorScheme: const ColorScheme.light(
                primary: THColors.redColor,
              ),
            ),
            child: SafeArea(
              child: Stepper(
                type: StepperType.horizontal,
                steps: getSteps(),
                currentStep: currentStepIndex,
                onStepTapped: (step) => setState(() {
                  currentStepIndex = step;
                }),
                onStepContinue: () {
                  final isLastStep = currentStepIndex == getSteps().length - 1;
                  if (isLastStep) {
                    print("completed");
                    // ovdje saljem podatke i spremam ih u bazu
                  } else {
                    setState(() {
                      currentStepIndex += 1;
                    });
                  }
                },
                onStepCancel: () {
                  if (currentStepIndex == 0) {
                  } else {
                    setState(() {
                      currentStepIndex -= 1;
                    });
                  }
                },
                controlsBuilder: (context, ControlsDetails deatils) {
                  return Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Row(
                      children: [
                        Expanded(
                            child: TextButton(
                                onPressed: deatils.onStepContinue,
                                style: ButtonStyle(
                                    alignment: Alignment.center,
                                    shape: MaterialStateProperty.all(
                                        RoundedRectangleBorder(
                                            side: const BorderSide(
                                              color: THColors.redColor,
                                              width: 1,
                                            ),
                                            borderRadius: BorderRadius.circular(
                                                10.0)))),
                                child: const Text("Nastavi"))),
                        Expanded(
                            child: TextButton(
                                onPressed: deatils.onStepCancel,
                                style: const ButtonStyle(
                                    alignment: Alignment.center),
                                child: const Text("Natrag"))),
                      ],
                    ),
                  );
                },
              ),
            )));
  }

  List<Step> getSteps() => [
        Step(
            state:
                currentStepIndex > 0 ? StepState.complete : StepState.indexed,
            isActive: currentStepIndex >= 0,
            content: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: THTextField(
                    labelText: 'E - mail adresa',
                    textInputController: TextEditingController(),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: THTextField(
                    labelText: 'Lozinka',
                    textInputController: TextEditingController(),
                  ),
                ),
              ],
            ),
            title: Text(
              'Account',
              style: TextStyle(color: Colors.white),
            )),
        Step(
            state:
                currentStepIndex > 1 ? StepState.complete : StepState.indexed,
            content: Container(),
            title: Text('Adresss'),
            isActive: currentStepIndex >= 1),
        Step(
            state:
                currentStepIndex > 2 ? StepState.complete : StepState.indexed,
            content: Container(),
            title: Text('Complete'),
            isActive: currentStepIndex >= 2),
      ];
}
