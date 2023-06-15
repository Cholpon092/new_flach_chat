import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Scaffold(
            body: Column(
          children: [
            Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        bottomLeft: Radius.circular(20)),
                    color: Colors.blue),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Salam',
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                ))
          ],
        )),
      ),
    );
  }
}
