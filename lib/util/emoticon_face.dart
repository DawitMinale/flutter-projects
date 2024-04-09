import 'package:flutter/material.dart';

class EmoticonFace extends StatelessWidget {
  final String emoticonFace;

  const EmoticonFace({super.key, required this.emoticonFace});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(4),
        decoration: BoxDecoration(
            color: Colors.blue[600], borderRadius: BorderRadius.circular(10)),
        padding: const EdgeInsets.all(12),
        child:  Text(
          emoticonFace,
          style: const TextStyle(fontSize: 20),
        ));
  }
}
