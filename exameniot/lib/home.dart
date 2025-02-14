import 'package:flutter/material.dart';
import 'form.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Fondo blanco como en la imagen
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            flex: 3,
            child: Center(
              child: Image.asset(
                'images/imagenexamen.png', // Ruta de la imagen
                width: 350, // Ajusta el tamaño según sea necesario
                fit: BoxFit.contain,
              ),
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            'CarPoolin',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const Text(
            'Viaja y ahorra dinero',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Colors.black54,
            ),
          ),
          const SizedBox(height: 40),
          FloatingActionButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const FormPage()),
              );
            },
            backgroundColor: Colors.indigo.shade300,
            shape: const CircleBorder(),
            child: const Icon(Icons.arrow_forward, color: Colors.black),
          ),
          const SizedBox(height: 30),
        ],
      ),
    );
  }
}
