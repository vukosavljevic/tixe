import 'package:flutter/material.dart';
import 'package:tixehr/constants/colors.dart';
import 'package:tixehr/constants/images.dart';
import 'package:tixehr/screens/home/home.dart';
import 'package:tixehr/screens/widgets/text_field.dart';
import 'package:go_router/go_router.dart';


class THRegisterScreen extends StatefulWidget {
  const THRegisterScreen({super.key});

  @override
  State<THRegisterScreen> createState() => _THRegisterScreenState();
}

class _THRegisterScreenState extends State<THRegisterScreen> {
  int currentStepIndex = 0;
    final nameController = TextEditingController();
    final surnameController = TextEditingController();
    final emailController = TextEditingController();
    final passwordController = TextEditingController();
  
    bool isCompleted = false;
  @override
  void dispose() {
    nameController.dispose();
    surnameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: THColors.darkColor,
        appBar: AppBar(
          backgroundColor: THColors.redColor,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: const Text("Novi Kupac"),
          centerTitle: true,
        ),
        body:isCompleted ? const THHomeScreen(): Theme(
            data: Theme.of(context).copyWith(
              canvasColor: THColors.darkColor,
              colorScheme: const ColorScheme.light(
                primary: THColors.redColor,
              ),
            ),
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
                  if(emailController.text.length > 2){
                    if(passwordController.text.length > 2){
                      context.push('/login');
                    }
                  }
                  // ovdje saljem podatke i spremam ih u bazu
                } else {
                  setState(() {
                    if(nameController.text.length > 2)
                    {
                      if(surnameController.text.length > 2){

                        currentStepIndex += 1;
                      }
                    }
                    else{
                      print("npc");
                    }
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
              controlsBuilder: (context, ControlsDetails details) {
                return Container(
                    margin: const EdgeInsets.only(top: 20),
                    child: controlButtons(context, details));
              },
            )));
  }

  Widget controlButtons(context, details) {
    return Padding(
      padding: const EdgeInsets.only(right: 16.0, left: 16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              currentStepIndex == 0
                  ? const SizedBox()
                  : Expanded(
                      child: TextButton(
                          onPressed: details.onStepCancel,
                          style: const ButtonStyle(alignment: Alignment.center),
                          child: const Text("Natrag",
                              style: TextStyle(fontWeight: FontWeight.bold))),
                    ),
              Expanded(
                child: TextButton(
                    onPressed: details.onStepContinue,
                    style: ButtonStyle(
                        alignment: Alignment.center,
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            side: const BorderSide(
                              color: THColors.redColor,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(10.0)))),
                    child: Text(currentStepIndex == 0 ? "Nastavi" : "Završi",
                        style: const TextStyle(fontWeight: FontWeight.bold))),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 60.0),
            child: TextButton(
                onPressed: () => context.go('/login'),
                child: const Text("Već imaš račun?")),
          )
        ],
      ),
    );
  }

  List<Step> getSteps() => [
        Step(
            state:
                currentStepIndex > 0 ? StepState.complete : StepState.indexed,
            isActive: currentStepIndex >= 0,
            content: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                    height: MediaQuery.of(context).size.height /5.5,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [Image.asset(THImages.mainTextLogo, height: 80)])),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                  child: Text("Unesite Vaše ime i prezime i nastavite dalje.",
                      style: Theme.of(context).textTheme.bodyMedium),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: THTextField(
                    labelText: 'Ime',
                    textInputController: nameController,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: THTextField(
                    labelText: 'Prezime',
                    textInputController: surnameController,
                  ),
                ),
              ],
            ),
            title: const Text(
              'Osobni podaci',
              style: TextStyle(color: Colors.white),
            )),
        Step(
            state:
                currentStepIndex > 1 ? StepState.complete : StepState.indexed,
            content: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                    height: MediaQuery.of(context).size.height / 5.5,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [Image.asset(THImages.mainTextLogo, height: 80)])),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                  child: Text("Unesite Vaš e-mail i lozinku.",
                      style: Theme.of(context).textTheme.bodyMedium),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: THTextField(
                    labelText: 'E - mail',
                    textInputController: emailController,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: THTextField(
                    labelText: 'Lozinka',
                    textInputController: passwordController,
                  ),
                ),
              ],
            ),
            title: const Text(
              'Završi',
              style: TextStyle(color: Colors.white),
            ),
            isActive: currentStepIndex >= 1),
      ];
}
