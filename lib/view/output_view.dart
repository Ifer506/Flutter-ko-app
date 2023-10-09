import 'package:flutter/material.dart';

class Output extends StatelessWidget {
  const Output({super.key});

  @override
  Widget build(BuildContext context) {
    int result = ModalRoute.of(context)!.settings.arguments as int;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Output"),
        elevation: 0,
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Text(
                'Result is : $result',
                style: const TextStyle(
                  fontSize: 24, // Font size
                  color: Colors.black, // Text color
                ),
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      ),
    );
  }
}
