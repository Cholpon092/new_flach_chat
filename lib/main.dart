import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:new_flach_chat/app/pages/sign_in_page.dart';
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
          path: 'signin',
          builder: (BuildContext context, GoRouterState state) {
            return const SignInPage();
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
