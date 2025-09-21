import 'package:flutter/material.dart';
import 'package:mi_app_de_prueba/Food%20Delivery%20App/consts.dart';

class MyOnBoardPage extends StatelessWidget {
  const MyOnBoardPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          //for image background
          Container(
            height: size.height,
            width: size.width,
            color: imageBackground,
            child: Image.asset(
              "assets/food-delivery/food pattern.png",
              color: imageBackground2,
              repeat: ImageRepeat.repeatY,
            ),
          ),
          Positioned(
            top: -80,
            right: 0,
            left: 0,
            child: Image.asset("assets/food-delivery/chef.png"),
          ),
          Positioned(
            top: 139,
            right: 50,
            width: 80,
            child: Image.asset("assets/food-delivery/leaf.png"),
          ),
          Positioned(
            top: 390,
            right: 40,
            width: 90,
            child: Image.asset("assets/food-delivery/chili.png"),
          ),
          Positioned(
            top: 230,
            left: -20,
            height: 90,
            width: 90,
            child: Image.asset("assets/food-delivery/ginger.png"),
          ),
          Positioned(
            bottom: 0,
            width: size.width,
            child: ClipPath(
              child: Container(
                color: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 75),
                child: Column(
                  children: [
                    RichText(
                      text: TextSpan(
                        style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                        ),
                        children: [
                          TextSpan(
                            text: "The fastest in delivery",
                            style: TextStyle(color: Colors.black),
                          ),
                          TextSpan(
                            text: "Food",
                            style: TextStyle(color: Colors.red),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
