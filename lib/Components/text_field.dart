import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final String labelText;
  final IconData? icon;
  // ignore: prefer_typing_uninitialized_variables
  final controller;
  final bool obsecureText;
  const MyTextField({super.key, required this.labelText, this.icon, required this.controller, required this.obsecureText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        controller: controller,
        obscureText: obsecureText,
        decoration: InputDecoration(
          
          hintText: labelText,
          hintStyle: TextStyle(color: Colors.grey.shade400),
          prefixIcon: Icon(icon),
          filled: true,
          fillColor: Colors.grey.shade200,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade400),
          ),
        ),
      ),
    );
  }
}
