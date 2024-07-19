import 'package:flutter/material.dart';
import 'package:home_rental_app/HomePage.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      color: Color.fromRGBO(237, 237, 237, 1),
      debugShowCheckedModeBanner: false,
      home:HomePage(),
      
    );
  }
}
