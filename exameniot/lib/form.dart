import 'package:flutter/material.dart';
import 'order.dart';

class FormPage extends StatefulWidget {
  const FormPage({super.key});

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  final TextEditingController originController = TextEditingController();
  final TextEditingController destinationController = TextEditingController();
  String selectedDate = "Hoy";
  int selectedPassengers = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Detalles del viaje")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Hacia donde vas?",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            TextField(
              controller: originController,
              decoration: const InputDecoration(labelText: "De"),
            ),
            TextField(
              controller: destinationController,
              decoration: const InputDecoration(labelText: "Hacia"),
            ),
            const SizedBox(height: 20),
            const Text("Dia",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            Row(
              children: [
                ChoiceChip(
                  label: const Text("Hoy"),
                  selected: selectedDate == "Hoy",
                  onSelected: (bool selected) {
                    setState(() {
                      selectedDate = "Hoy";
                    });
                  },
                ),
                const SizedBox(width: 10),
                ChoiceChip(
                  label: const Text("Mañana"),
                  selected: selectedDate == "Mañana",
                  onSelected: (bool selected) {
                    setState(() {
                      selectedDate = "Mañana";
                    });
                  },
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Text("Pasajeros",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            DropdownButton<int>(
              value: selectedPassengers,
              items: List.generate(6, (index) => index + 1)
                  .map((number) => DropdownMenuItem(
                        value: number,
                        child: Text(number.toString()),
                      ))
                  .toList(),
              onChanged: (int? value) {
                setState(() {
                  selectedPassengers = value ?? 1;
                });
              },
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => OrderPage(
                      origin: originController.text,
                      destination: destinationController.text,
                      date: selectedDate,
                      passengers: selectedPassengers,
                    ),
                  ),
                );
              },
              child: const Text("Buscar"),
            ),
          ],
        ),
      ),
    );
  }
}
