import 'package:flutter/material.dart';

class CurrencyConvert extends StatelessWidget {
  const CurrencyConvert({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: BackButton(),
        title: const Text('Currency App', style: TextStyle(fontSize: 30)),
        centerTitle: true,
        backgroundColor: Colors.white,

      ),
      
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Converter",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurpleAccent,
              ),
            ),
            Text(
              "0",
              style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
            ),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Amount',
                hintText: 'Enter Amount',
                hintStyle: TextStyle(fontSize: 20,color: Colors.black),
                labelStyle: TextStyle(fontSize: 22,color: Colors.black),
              ),
            ),
            TextButton(onPressed: (){}, child: Text('Change',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 39
              
            ),
            ))
          ],
        ),
      ),
    );
  }
}
