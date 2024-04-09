import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 120,vertical: 20),
      
    
      child: const Text(
        "Sign in",
        style: TextStyle(
            color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
      ),
      decoration: BoxDecoration(
        
        color: Colors.black,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
