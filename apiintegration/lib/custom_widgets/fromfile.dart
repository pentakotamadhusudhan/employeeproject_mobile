import 'package:flutter/material.dart';


class custom_textfield extends StatelessWidget {
  final text;
  final controller;
  const custom_textfield({
    Key? key,
    required this.text,
    required this.controller
  }) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
          floatingLabelBehavior: FloatingLabelBehavior.auto,
          floatingLabelAlignment: FloatingLabelAlignment.center,
          label: Text(text),
        labelStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.blueGrey)
      ),
    );
  }
}
