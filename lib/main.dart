import 'package:flutter/material.dart';
import 'screens/login_screen.dart'; // Ensure this import is correct

void main() {
  runApp(const MerafongAliveApp());
}

class MerafongAliveApp extends StatelessWidget {
  const MerafongAliveApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Merafong Alive',
      theme: ThemeData(primarySwatch: Colors.green),
      home: LoginScreen(), // This should be your starting screen
    );
  }
}
