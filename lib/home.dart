import 'package:dribble_design/exeTile.dart';
import 'package:flutter/material.dart';

import 'emo.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: ""
          ),BottomNavigationBarItem(
            icon: Icon(Icons.menu_book_outlined),
            label: ""
          ),BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: ""
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Hi, Jared!!",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            "23 Oct, 2023",
                            style: TextStyle(
                              color: Colors.blue[200],
                            ),
                          )
                        ],
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.blue,
                        ),
                        padding: EdgeInsets.all(12),
                        child: Icon(
                          Icons.notifications,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 20),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: EdgeInsets.all(12),
                    child: Row(
                      children: [
                        Icon(Icons.search,color: Colors.white,),
                        SizedBox(width: 5),
                        Text(
                          "Search..",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "How do you feel?",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      Icon(Icons.more_horiz,color: Colors.white,)
                    ],
                  ),
                  SizedBox(height: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Emo("😣"),
                          SizedBox(height: 8),
                          Text(
                            "Bad",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),Column(
                        children: [
                          Emo("🙂"),
                          SizedBox(height: 8),
                          Text(
                            "Fine",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),Column(
                        children: [
                          Emo("😊"),
                          SizedBox(height: 8),
                          Text(
                            "Well",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),Column(
                        children: [
                          Emo("😁"),
                          SizedBox(height: 8),
                          Text(
                            "Exelent",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),

                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 25),
            Expanded(
              child: Container(
                color: Colors.grey[300],
                padding: EdgeInsets.all(25),
                child: Center(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Exercises",style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                          ),
                          Icon(
                            Icons.more_horiz,
                          )
                        ],
                      ),
                      SizedBox(height: 20),
                      Expanded(
                        child: ListView(
                          children: [
                            ExeTile(
                              icon: Icons.favorite,
                              name: "Speaking Skill",
                              num: 16,
                              color: Colors.deepOrange,
                            ),ExeTile(
                              icon: Icons.menu_book,
                              name: "Reading Skill",
                              num: 26,
                              color: Colors.pink,
                            ),ExeTile(
                              icon: Icons.line_style,
                              name: "Writing Skill",
                              num: 12,
                              color: Colors.purple,
                            ),ExeTile(
                              icon: Icons.speaker,
                              name: "Listening Skill",
                              num: 69,
                              color: Colors.cyanAccent,
                            ),ExeTile(
                              icon: Icons.abc,
                              name: "Vocabulary Skill",
                              num: 40,
                              color: Colors.redAccent,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
