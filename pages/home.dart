import 'package:flutter/material.dart';
import 'package:instahomepage/util/bubble_stories.dart';

class UserHome extends StatelessWidget {
  final List people = [
    "Nikesh",
    "Sandesh",
    "Prabin",
    "Ashok",
    "Ayush",
    "Saurab",
    "Sangita",
    "Rohan"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Instagram",
                style: TextStyle(color: Colors.black),
              ),
              Row(
                children: [
                  Icon(Icons.add),
                  Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Icon(Icons.favorite),
                  ),
                  Icon(Icons.message),
                ],
              )
            ],
          ),
        ),
        body: Column(
          children: [
            //stories
            Container(
                height: 130,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: people.length,
                    itemBuilder: (context, index) {
                      return BubbleStories(text: people[index]);
                    })

                //posts
                ),
          ],
        ));
  }
}
