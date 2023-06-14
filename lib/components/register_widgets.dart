import 'package:flutter/material.dart';

class registerwidgets extends StatelessWidget {
  const registerwidgets(
      {super.key, required this.title, this.containerColor, this.onTap});
  final String title;
  final Color? containerColor;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
          decoration: BoxDecoration(
              color: containerColor ?? Colors.blueGrey.shade100,
              borderRadius: BorderRadius.circular(25)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 145, vertical: 10),
            child: Text(
              title,
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
              ),
            ),
          )),
    );
  }
}
