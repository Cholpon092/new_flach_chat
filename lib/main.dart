import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:new_flach_chat/app/pages/auth/sign_in_page.dart';
import 'package:new_flach_chat/app/pages/auth/sign_up_page.dart';
import 'package:new_flach_chat/app/pages/home_page.dart';
import 'package:new_flach_chat/app/pages/welcome_page.dart';

void main() {
  runApp(const FlashChat());
}

final GoRouter _router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const WelcomePage();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'sign_in_page',
          builder: (BuildContext context, GoRouterState state) {
            return const SignInPage();
          },
        ),
        GoRoute(
          path: 'sign_up_page',
          builder: (BuildContext context, GoRouterState state) {
            return const SignUpPage();
          },
        ),
        GoRoute(
          path: 'home_page',
          builder: (BuildContext context, GoRouterState state) {
            return const HomePage();
          },
        ),
      ],
    ),
  ],
);

class FlashChat extends StatelessWidget {
  const FlashChat({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
      debugShowCheckedModeBanner: false,
    );
  }
}
