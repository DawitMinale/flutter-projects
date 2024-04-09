// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:doctor_booking_app/shared/widgets/avatar/circle_avatar_with_text_label.dart';
import 'package:doctor_booking_app/shared/widgets/titles/section_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_launcher_icons/xml_templates.dart';
import 'package:models/models.dart';

import '../shared/widgets/cards/appointment_preview_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // create a bloc and provide it to the HomeView
    return const HomeView();
  }
}

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // create the home view UI
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 80,
          title: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 6.0),
              Text(
                'Devali',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 4.0),
              Row(
                children: [
                  Icon(
                    Icons.location_on,
                    color: Color.fromARGB(255, 214, 42, 39),
                  ),
                  SizedBox(width: 4.0),
                  Text(
                    'Ethiopia,Sheger',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 214, 42, 39)),
                  ),
                  SizedBox(width: 4.0),
                  Icon(Icons.expand_more,
                      color: Color.fromARGB(255, 214, 42, 39)),
                ],
              )
            ],
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.notifications_outlined),
            ),
            const SizedBox(width: 8.0),
          ],
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(64.0),
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search',
                  prefixIcon: const Icon(Icons.search),
                  suffixIcon: Container(
                      margin: const EdgeInsets.all(8.0),
                      padding: const EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: const Icon(
                        Icons.filter_alt_outlined,
                        color: Colors.white,
                      )),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              _DoctorCategories(),
              SizedBox(
                height: 24.0,
              ),
              _MySchedule(),
              SizedBox(
                height: 24.0,
              ),
              NearByDoctors()
            ],
          ),
        ));
  }
}

class NearByDoctors extends StatelessWidget {
  const NearByDoctors({super.key});

  @override
  Widget build(BuildContext context) {
        final colorScheme = Theme.of(context).colorScheme;

    return Column(
      children: [
        SectionTitle(
            title: "Nearby Doctors", action: "See ALL", onPressed: () {}),
        SizedBox(
          height: 8.0,
        ),
        ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemBuilder: (context, index) {},
          separatorBuilder: (context, index) {
            return Divider(height: 24.0,color: colorScheme.surfaceVariant,);
          },
          itemCount: 10,
        )
      ],
    );
  }
}

class _MySchedule extends StatelessWidget {
  const _MySchedule({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          title: "MySchedule",
          action: "See ALL",
          onPressed: () {},
        ),
        AppointmentPreviewCard()
      ],
    );
  }
}

class _DoctorCategories extends StatelessWidget {
  const _DoctorCategories({super.key});

  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        SectionTitle(
          title: "Categories",
          action: "See ALL",
          onPressed: () {},
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: DoctorCategory.values
              .take(4)
              .map((category) => Expanded(
                  child: CircleAvatarWithTextLabel(
                      label: category.name, icon: category.icon)))
              .toList(),
        )
      ],
    );
  }
}
