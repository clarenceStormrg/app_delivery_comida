import 'package:flutter/material.dart';
import 'package:mi_app_de_prueba/Food%20Delivery%20App/consts.dart';

class FoodDeliveryHomeScreen extends StatefulWidget {
  const FoodDeliveryHomeScreen({super.key});

  @override
  State<FoodDeliveryHomeScreen> createState() => _FoodDeliveryHomeScreenState();
}

class _FoodDeliveryHomeScreenState extends State<FoodDeliveryHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        actions: [
          const SizedBox(width: 25,),
          Container(
            height: 45,
            width: 45,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: grey1,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Image.asset("assets/food-delivery/icon/dash.png"),
          ),
          const Spacer(),
          const Row(
            children: [
              Icon(Icons.location_on_outlined, size: 18, color: red),
              SizedBox(width: 15),
              Text(
                "kathmandu, nepal",
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
              SizedBox(width: 5),
              Icon(Icons.keyboard_arrow_down_rounded, size: 18, color: orange),
            ],
          ),
          Spacer(),
          Container(
            height: 45,
            width: 45,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: grey1,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Image.asset("assets/food-delivery/profile.png"),
          ),
          SizedBox(width: 25,),
        ],
      ),
    );
  }
}
