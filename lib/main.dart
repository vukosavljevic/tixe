import 'package:flutter/material.dart';
import 'package:tixehr/constants/theme.dart';
import 'package:tixehr/router/router.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: primaryTheme,
      debugShowCheckedModeBanner: false,
      routerConfig: router,
    );
  }
}

