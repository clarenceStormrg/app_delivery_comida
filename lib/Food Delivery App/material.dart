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
              clipper: CustomClip(),
              child: Container(
                color: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 75),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    RichText(
                      textAlign: TextAlign.center,
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
                    SizedBox(height: 20),
                    Text(
                      "Our job is to filling your tummy with delicius food and fast delivery.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 25),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        ...List.generate(
                          3,
                          (index) => Container(
                            width: index == 0 ? 20 : 10,
                            height: 10,
                            margin: EdgeInsets.only(right: 10),
                            decoration: BoxDecoration(
                              color: index == 0 ? orange : grey,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 30),
                    MaterialButton(
                      onPressed: () {},
                      color: red,
                      height: 65,
                      minWidth: 250,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: const Text(
                        "Get Started",
                        style: TextStyle(fontSize: 18, color: Colors.white),
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

class CustomClip extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path =Path();
    path.lineTo(0, 30);
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 30);
    path.quadraticBezierTo(size.width / 2,-30, 0, 30);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}