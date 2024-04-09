import 'package:dribble/util/emoticon_face.dart';
import 'package:dribble/util/exercises.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1565C0),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
        ],
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      const Text("Hi,Deva",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold)),
                      const SizedBox(height: 8),
                      Text(
                        "23 Jan,2024",
                        style: TextStyle(
                            color: Colors.blue[200],
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.blue[600],
                        borderRadius: BorderRadius.circular(10)),
                    padding: const EdgeInsets.all(8),
                    child: const Icon(Icons.notifications, color: Colors.white),
                  )
                ],
              ),
            ),

            const SizedBox(
              height: 20,
            ),
            // searchBar
            Container(
              margin: const EdgeInsets.all(10),
              child: TextField(
                style: const TextStyle(fontSize: 10),
                decoration: InputDecoration(
                    hintText: "Search",
                    prefixIcon: const Icon(Icons.search),
                    fillColor: Colors.blue[100],
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none)),
              ),
            ),

            const SizedBox(
              height: 16,
            ),

            //How do you feel today?

            const Padding(
              padding: EdgeInsets.all(4.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("How do you feel today?",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold)),
                  Icon(
                    Icons.more_horiz,
                    color: Colors.white,
                  ),
                ],
              ),
            ),

            const SizedBox(
              height: 20,
            ),
            //4 different faces

            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    EmoticonFace(emoticonFace: "😁"),
                    Text(
                      "Smile",
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    )
                  ],
                ),
                Column(
                  children: [
                    EmoticonFace(emoticonFace: "😢"),
                    Text(
                      "Bad",
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    )
                  ],
                ),
                Column(
                  children: [
                    EmoticonFace(emoticonFace: "😍"),
                    Text(
                      "Love",
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    )
                  ],
                ),
                Column(
                  children: [
                    EmoticonFace(emoticonFace: "😡"),
                    Text(
                      "Angry",
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    )
                  ],
                ),
              ],
            ),

            const SizedBox(
              height: 16,
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(20),
                color: Colors.grey[300],
                child:  Center(
                  child: Column(
                    children: [
                      //Exercises Heading
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Exercises',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                          Icon(Icons.more_horiz)
                        ],
                      ),

                      //list view of exercises
                      Container(
                        child: const Column(
                          children: [
                            Exercises(
                              title: 'Speaking Skill',
                              leading: Icons.favorite,
                              subTitle: '16 Excersises',
                            ),
                             Exercises(
                              title: 'Reading Speed',
                              leading: Icons.contact_phone,
                              subTitle: '6 Excersises',
                            ),
                           
                            
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
