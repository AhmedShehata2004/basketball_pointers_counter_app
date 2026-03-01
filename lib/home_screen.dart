import 'package:basketball_points_counter/custom_button.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
        body: SizedBox(
          height: double.infinity,
          child: Column(
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
                        Text("Team A",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                        Text("0",style: TextStyle(fontSize: 100,fontWeight: FontWeight.bold),),
                        CustomButton(text: "Add 1 Point", onPressed: () {}),
                        CustomButton(text: "Add 2 Points", onPressed: () {}),
                        CustomButton(text: "Add 3 Points", onPressed: () {}),
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
                        Text("Team B",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                        Text("0",style: TextStyle(fontSize: 100,fontWeight: FontWeight.bold),),
                        CustomButton(text: "Add 1 Point", onPressed: () {}),
                        CustomButton(text: "Add 2 Points", onPressed: () {}),
                        CustomButton(text: "Add 3 Points", onPressed: () {}),
                      ],
                    ),
                  ],
                ),
              ),
              CustomButton(text: "Reset", onPressed: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
