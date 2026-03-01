import 'package:basketball_points_counter/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BasketBallCounterApp());
}

class BasketBallCounterApp extends StatelessWidget {
  const BasketBallCounterApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
     home: HomeScreen() ,
     
      
    );
  }
}


