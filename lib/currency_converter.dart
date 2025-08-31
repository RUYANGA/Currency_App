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

            Padding(
              padding: const EdgeInsets.all(22.0),
              child: TextField(
                decoration: InputDecoration(
                  suffixIcon: Icon(
                    Icons.currency_exchange,
                    size: 30,
                    color: const Color.fromARGB(255, 68, 65, 65),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: const Color.fromARGB(255, 32, 32, 32),
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  labelText: 'Amount',
                  hintText: 'Enter Amount',
                  hintStyle: TextStyle(fontSize: 20, color: Colors.black),
                  labelStyle: TextStyle(fontSize: 22, color: Colors.black),
                  filled: true,
                  fillColor: const Color.fromARGB(255, 253, 252, 252),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: const Color.fromARGB(255, 128, 106, 106),
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                ),
                keyboardType: TextInputType.numberWithOptions(
                  decimal: true,
                  signed: false,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
