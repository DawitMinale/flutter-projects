// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AppointmentPreviewCard extends StatelessWidget {
  const AppointmentPreviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;
    return Column(
      children: [
        Container(
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [colorScheme.primary, colorScheme.tertiary])),
            child: Column(
              children: [
                SizedBox(
                    height: 100,
                    child: Center(
                        child: Text("No Appointment yet",
                            style: textTheme.bodyMedium!.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.bold)))),
              ],
            ))
      ],
    );
  }
}
