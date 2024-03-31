import 'package:flutter/material.dart';
import 'package:tixehr/screens/widgets/button_widget.dart';
import 'package:tixehr/screens/widgets/text_field.dart';

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
        backgroundColor: THColors.darkColor,
      ),
      backgroundColor: THColors.darkColor,
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.only(top: 16.0),
          child: THTextButton(
            onTap: () {},
            backgroundColor: Colors.blue,
            child: const Text(
              "Prijava putem Facebooka",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: THTextButton(
            onTap: () {},
            backgroundColor: THColors.whiteColor,
            child: const Text("Prijava putem Googlea",
                style: TextStyle(color: THColors.darkColor)),
          ),
        ),
        THTextButton(
          onTap: () {},
          backgroundColor: Colors.black,
          child: const Text("Prijava putem Applea",
              style: TextStyle(color: Colors.white)),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(vertical:12.0),
          child: Row(
            children: [
              Expanded(
                child: Divider(
                  color: Colors.white,
                  height: 25,
                  thickness: 2,
                  indent: 5,
                  endIndent: 5,
                ),
              ),
              Text("ILI", style: TextStyle(color: Colors.white)),
              Expanded(
                child: Divider(
                  color: Colors.white,
                  height: 25,
                  thickness: 2,
                  indent: 5,
                  endIndent: 5,
                ),
              ),
            ],
          ),
        ),
        const Text("Prijavi se svojom e-mail adresom", style: TextStyle(color: Colors.white)),
        Padding(
              padding: const EdgeInsets.only(top:16.0),
              child: THTextField(labelText: 'E - mail adresa', textInputController: TextEditingController()),
            ),
         Padding(
              padding: const EdgeInsets.only(top:16.0),
              child: THTextField(labelText: 'Lozinka',textInputController: TextEditingController()),
            ),
          Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: THTextButton(
            onTap: () {},
            backgroundColor: THColors.whiteColor,
            child: const Text("Prijavi se",
                style: TextStyle(color: THColors.darkColor)),
          ),
        ),
         Padding(
          padding: const EdgeInsets.symmetric(vertical: 2-.0),
          child: THTextButton(
            onTap: () {},
            backgroundColor: Colors.transparent,
            child: const Text("Zaboravljena lozinka",
                style: TextStyle(color: THColors.whiteColor)),
          ),
        ),
      ]),
    );
  }
}
