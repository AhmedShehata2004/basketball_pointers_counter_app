import 'package:basketball_points_counter/custom_button.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int teamAScore = 0;
  int teamBScore = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink,
          title: Text(
            "BasketBall Points Counter",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 400,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "Team A",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        teamAScore.toString(),
                        style: TextStyle(
                          fontSize: 100,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      CustomButton(
                        text: "Add 1 Point",
                        onPressed: () {
                          addPoints("A", 1);
                        },
                      ),
                      CustomButton(
                        text: "Add 2 Points",
                        onPressed: () {
                          addPoints("A", 2);
                        },
                      ),
                      CustomButton(
                        text: "Add 3 Points",
                        onPressed: () {
                          addPoints("A", 3);
                        },
                      ),
                    ],
                  ),
                  VerticalDivider(
                    width: 10,
                    color: Colors.black,
                    thickness: 5,
                    indent: 20,
                    endIndent: 20,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,

                    children: [
                      Text(
                        "Team B",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        teamBScore.toString(),
                        style: TextStyle(
                          fontSize: 100,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      CustomButton(
                        text: "Add 1 Point",
                        onPressed: () {
                          addPoints("B", 1);
                        },
                      ),
                      CustomButton(
                        text: "Add 2 Points",
                        onPressed: () {
                          addPoints("B", 2);
                        },
                      ),
                      CustomButton(
                        text: "Add 3 Points",
                        onPressed: () {
                          addPoints("B", 3);
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
            CustomButton(
              text: "Reset",

              
              onPressed: () {
                reset();
              },
            ),
          ],
        ),
      ),
    );
  }

  void addPoints(String team, int points) {
    if (team == "A") {
      teamAScore = teamAScore + points;
    } else {
      teamBScore = teamBScore + points;
    }
    setState(() {});
  }

  void reset() {
    teamAScore = 0;
    teamBScore = 0;
    setState(() {});
  }
}
