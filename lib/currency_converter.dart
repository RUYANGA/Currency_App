import 'package:flutter/material.dart';

class CurrencyConvert extends StatefulWidget {
  const CurrencyConvert({super.key});

  @override
  State<CurrencyConvert> createState() => _CurrencyConvertState();
}

class _CurrencyConvertState extends State<CurrencyConvert> {
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        //leading: BackButton(),
        title: const Text('Currency App', style: TextStyle(fontSize: 30)),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(22.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(22.0),
                child: Text(
                  'Frw $result',
                  style: const TextStyle(
                    fontSize: 48,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(22.0),
                child: TextField(
                  controller: textEditingController,
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
                    hintText: 'Enter USD',
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
                  keyboardType: TextInputType.numberWithOptions(decimal: true),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(22.0),
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      result = double.tryParse(textEditingController.text) != null
                          ? double.parse(textEditingController.text) * 1450
                          : 0;
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.indigo,
                    foregroundColor: Colors.white,
                    minimumSize: Size(double.infinity, 50),
                    elevation: 6,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
        
                  child: Text(
                    "Exchange",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
