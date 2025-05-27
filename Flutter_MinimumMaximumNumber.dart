import 'package:flutter/material.dart';

class MinMaxFinder extends StatefulWidget {
  const MinMaxFinder({super.key});

  @override
  State<MinMaxFinder> createState() => MinMaxFinderState();
}

class MinMaxFinderState extends State<MinMaxFinder> {
  final TextEditingController num1Controller = TextEditingController();
  final TextEditingController num2Controller = TextEditingController();
  final TextEditingController num3Controller = TextEditingController();

  String maxResult = "";
  String minResult = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('MinMax Finder')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: num1Controller,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: 'Number 1'),
            ),
            TextField(
              controller: num2Controller,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: 'Number 2'),
            ),
            TextField(
              controller: num3Controller,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: 'Number 3'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                double n1 = double.tryParse(num1Controller.text) ?? 0;
                double n2 = double.tryParse(num2Controller.text) ?? 0;
                double n3 = double.tryParse(num3Controller.text) ?? 0;
                double maxNum = [n1, n2, n3].reduce((a, b) => a > b ? a : b);
                setState(() {
                  maxResult = "Max: $maxNum";
                });
              },
              child: const Text('Show Max'),
            ),
            ElevatedButton(
              onPressed: () {
                double n1 = double.tryParse(num1Controller.text) ?? 0;
                double n2 = double.tryParse(num2Controller.text) ?? 0;
                double n3 = double.tryParse(num3Controller.text) ?? 0;
                double minNum = [n1, n2, n3].reduce((a, b) => a < b ? a : b);
                setState(() {
                  minResult = "Min: $minNum";
                });
              },
              child: const Text('Show Min'),
            ),
            const SizedBox(height: 20),
            Text(maxResult, style: const TextStyle(fontSize: 18)),
            Text(minResult, style: const TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
