import 'package:flutter/material.dart';

class CurrencyConvert extends StatelessWidget {
  const CurrencyConvert({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Currency Converter')),
      body: const Center(child: Text('Welcome to the Currency Converter!')),
    );
  }
}
