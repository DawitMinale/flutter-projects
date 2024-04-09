import 'package:flutter/material.dart';

class Exercises extends StatelessWidget {
  final String title;
  final IconData? leading;
  final String subTitle;

  const Exercises(
      {super.key,
      required this.title,
      required this.leading,
      required this.subTitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(4),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(16)),
      child: ListTile(
        leading: leading != null
            ? Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Colors.orange),
                padding: EdgeInsets.all(4),
                child: Icon(
                  leading,
                  color: Colors.white,
                ))
            : null, // Handle nullable leading
        title: Text(title),
        subtitle: Text(subTitle),
        trailing: const Icon(Icons.more_horiz),
      ),
    );
  }
}
