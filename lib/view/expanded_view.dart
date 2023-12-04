import 'package:flutter/material.dart';

class ExpandedWidget extends StatefulWidget {
  const ExpandedWidget({super.key});

  @override
  State<ExpandedWidget> createState() => _ExpandedWidgetState();
}

class _ExpandedWidgetState extends State<ExpandedWidget> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Expanded"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(0),
        child: Column(
          children: [
            Container(
              height: height * 0.4,
              width: width,
              decoration: const BoxDecoration(color: Colors.amber),
              child: SizedBox(
                height: 20,
                width: 50,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text("Button 1"),
                ),
              ),
            ),
            // Flexible with fit as FlexFit.tight == Expanded
            // Flexible(
            //   fit: FlexFit.tight,
            //   child: Container(
            //     height: height * 0.2,
            //     decoration: const BoxDecoration(color: Colors.red),
            //   ),
            // ),
            Expanded(
              child: Container(
                height: height * 0.2,
                decoration: const BoxDecoration(color: Colors.red),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
