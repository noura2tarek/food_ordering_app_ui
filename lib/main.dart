import 'package:flutter/material.dart';
import 'package:food_ordering_app_ui/view/screens/test_screen.dart';

void main(){
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TestScreen(),
    );
  }
}