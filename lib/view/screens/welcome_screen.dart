import 'package:flutter/material.dart';
import 'package:food_ordering_app_ui/core/app_images.dart';
import 'package:food_ordering_app_ui/view/screens/home.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Image.asset(Assets.imagesBoy),
          const SizedBox(
            height: 10.0,
          ),
          Text(
            "Order Your Food Now!",
            style: TextStyle(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
              fontSize: 28.0,
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),

          /// second text
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.2),
            child: Text(
              "Order food and get delivery within a few minutes in your door",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.black45,
              ),
            ),
          ),
          const SizedBox(
            height: 80.0,
          ),
          ///// get started button
          InkWell(
            onTap: () {
              // navigate to home
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => HomeScreen()));
            },
            borderRadius: BorderRadius.all(Radius.circular(10)),
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
              padding: EdgeInsets.symmetric(vertical: 15),
              width: double.infinity,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Color(0xffff2f08).withOpacity(
                  0.9,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Get Started",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 20.0,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 25.0,
          ),
        ],
      ),
    );
  }
}
