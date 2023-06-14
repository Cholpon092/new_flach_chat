import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:go_router/go_router.dart';
import 'package:new_flach_chat/components/register_widgets.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff80E29F),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        AnimatedTextKit(
          animatedTexts: [
            WavyAnimatedText('Flash chat',
                textStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold)),
          ],
          isRepeatingAnimation: false,
          onTap: () {
            print("Tap Event");
          },
        ),
        SizedBox(height: 40),
        registerwidgets(
          title: 'Sign in',
          onTap: () {
            context.go('/signin');
          },
        ),
        SizedBox(
          height: 20,
        ),
        registerwidgets(
          title: 'Sign up',
          onTap: () {},
          containerColor: Colors.blue,
        )
      ]),
    );
  }
}
