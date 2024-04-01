import 'package:flutter/material.dart';
import 'package:tixehr/constants/images.dart';
import 'package:tixehr/screens/widgets/button_widget.dart';
import 'package:tixehr/screens/widgets/text_field.dart';
import 'package:go_router/go_router.dart';

import '../../constants/colors.dart';
import 'package:tixehr/services/firebase_auth_service.dart';
import 'package:firebase_auth/firebase_auth.dart'; // Import FirebaseAuth

class THLoginScreen extends StatefulWidget {
  const THLoginScreen({Key? key}) : super(key: key);

  @override
  State<THLoginScreen> createState() => _THLoginScreenState();
}

class _THLoginScreenState extends State<THLoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final FirebaseAuthService _authService = FirebaseAuthService();

  User? currentUser; // var za korisnika

  Future<void> _login() async {
    // podijeliti u funkcije da se ne dogodit use_build_context_synchronously
    String email = _emailController.text.trim();
    String password = _passwordController.text.trim();

    if (email.isNotEmpty && password.isNotEmpty) {
      await _authService.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      if (_authService.currentUser != null) {
        setState(() {
          currentUser = _authService.currentUser; // postavi korisnika
        });
        context.push("/home");
      } else {
        // error
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Netocan mail ili lozinka')),
        );
      }
    } else {
      // error
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Molimo vas unesite mail i lozinku')),
      );
    }
  }

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
                  Image.asset(THImages.mainTextLogo, height: 124),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: THTextField(
                labelText: 'E - mail',
                textInputController: _emailController,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24.0, right: 24.0),
              child: THTextField(
                labelText: 'Lozinka',
                textInputController: _passwordController,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: THTextButton(
                onTap: _login,
                backgroundColor: THColors.redColor,
                child: const Text(
                  "Prijavi se",
                  style: TextStyle(
                    color: THColors.whiteColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                "Zaboravljena lozinka",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 60.0),
              child: TextButton(
                onPressed: () => context.go('/register'),
                child: Text(
                  "Već imaš račun?",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
