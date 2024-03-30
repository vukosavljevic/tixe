import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tixehr/screens/login/login_screen.dart';
import 'package:tixehr/screens/register/register_screen.dart';
import 'package:tixehr/screens/splash/splash_screen.dart';

final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const THSplashScreen();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'details',
          builder: (BuildContext context, GoRouterState state) {
            return const THSplashScreen();
          },
        ),
        GoRoute(
          path: 'login',
          builder: (BuildContext context, GoRouterState state) {
            return const THLoginScreen();
          },
        ),
         GoRoute(
          path: 'register',
          builder: (BuildContext context, GoRouterState state) {
            return const THRegisterScreen();
          },
        ),
      ],
    ),
  ],
);