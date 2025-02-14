import 'package:flutter/material.dart';
import 'home.dart';
import 'form.dart';
void main() {
  runApp(const Examen());
}

class Examen extends StatelessWidget {
  const Examen({super.key});
static const String title = "Examen";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: title),
    );
  }
}

