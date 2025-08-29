import 'package:flutter/material.dart';

class CurrencyConvert extends StatelessWidget {
  const CurrencyConvert({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Currency Converter')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Currency",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurpleAccent,
              ),
            ),
            Text("0", style: TextStyle(fontSize: 48)),
          ],
        ),
      ),
    );
  }
}
