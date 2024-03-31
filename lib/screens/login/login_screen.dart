import 'package:flutter/material.dart';
import 'package:tixehr/constants/images.dart';
import 'package:tixehr/screens/widgets/button_widget.dart';
import 'package:tixehr/screens/widgets/text_field.dart';
import 'package:go_router/go_router.dart';

import '../../constants/colors.dart';

class THLoginScreen extends StatelessWidget {
  const THLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Prijavi se",
          ),
          backgroundColor: THColors.redColor,
          centerTitle: true,
        ),
        backgroundColor: THColors.darkColor,
        body: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                  height: MediaQuery.of(context).size.height / 4.5,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Image.asset(THImages.mainTextLogo, height: 124)
                      ])),
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: THTextField(
                  labelText: 'E - mail',
                  textInputController: TextEditingController(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24.0, right: 24.0),
                child: THTextField(
                  labelText: 'Lozinka',
                  textInputController: TextEditingController(),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: THTextButton(
                    onTap: () => context.push("/home"),
                    backgroundColor: THColors.redColor,
                    child: const Text("Prijavi se",
                        style: TextStyle(
                            color: THColors.whiteColor,
                            fontWeight: FontWeight.bold)),
                  )),
                  TextButton(
                      onPressed: () {},
                      child:  Text("Zaboravljena lozinka", style: Theme.of(context).textTheme.bodyMedium)),
              Padding(
                padding: const EdgeInsets.only(top: 60.0),
                child: TextButton(
                    onPressed: () => context.go('/register'),
                    child:  Text("Već imaš račun?", style: Theme.of(context).textTheme.bodyMedium)),
              )
            ],
          ),
        ));
  }
}
