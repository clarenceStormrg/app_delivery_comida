import 'package:flutter/material.dart';
import 'package:mi_app_de_prueba/Food%20Delivery%20App/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyOnBoardPage(),
    );
  }
}