import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:go_router/go_router.dart';
import 'package:new_flach_chat/components/register_widgets.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              ' Sign In',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87),
            ),
            SizedBox(
              height: 50,
            ),
            TextFormField(
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20),
              decoration: InputDecoration(
                  hintText: 'full name',
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 5, color: Colors.greenAccent.shade100),
                      borderRadius: BorderRadius.circular(50.0)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                    color: Colors.green.shade200,
                    width: 2,
                  ))),
            ),
            SizedBox(height: 20),
            TextFormField(
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20),
              decoration: InputDecoration(
                  hintText: 'email',
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 5, color: Colors.greenAccent.shade100),
                      borderRadius: BorderRadius.circular(50.0)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                    color: Colors.green.shade200,
                    width: 2,
                  ))),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text('already have accaount?',
                    style:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                SizedBox(
                  width: 25,
                ),
                InkWell(
                  onTap: () {
                    context.go('/sign_up_page');
                  },
                  child: Text('Sign Up',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            registerwidgets(
              onTap: () {
                context.go('/home_page');
              },
              title: 'Sign in',
            )
          ],
        ),
      ),
    );
  }
}
