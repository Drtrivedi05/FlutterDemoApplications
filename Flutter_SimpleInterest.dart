import 'package:flutter/material.dart';

class InterestCalculator extends StatefulWidget {
  const InterestCalculator({super.key});

  @override
  State<InterestCalculator> createState() => InterestCalculatorState();
}

class InterestCalculatorState extends State<InterestCalculator> {
  final TextEditingController principalController = TextEditingController();
  final TextEditingController rateController = TextEditingController();
  final TextEditingController termController = TextEditingController();

  String result = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Simple Interest Calculator')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: principalController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: 'Principal'),
            ),
            TextField(
              controller: rateController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: 'Rate of Interest'),
            ),
            TextField(
              controller: termController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: 'Term (Years)'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                double p = double.tryParse(principalController.text) ?? 0;
                double r = double.tryParse(rateController.text) ?? 0;
                double t = double.tryParse(termController.text) ?? 0;
                double si = (p * r * t) / 100;
                setState(() {
                  result = "Simple Interest: $si";
                });
              },
              child: const Text('Show Interest'),
            ),
            ElevatedButton(
              onPressed: () {
                principalController.clear();
                rateController.clear();
                termController.clear();
                setState(() {
                  result = "";
                });
              },
              child: const Text('Reset'),
            ),
            const SizedBox(height: 20),
            Text(result, style: const TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
