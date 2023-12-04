import 'package:flutter/material.dart';

class RowAndColumn extends StatefulWidget {
  const RowAndColumn({super.key});

  @override
  State<RowAndColumn> createState() => _RowAndColumnState();
}

class _RowAndColumnState extends State<RowAndColumn> {
  @override
  Widget build(BuildContext context) {
    // var height = MediaQuery.of(context).size.height;
    // var width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Row and Column"),
        // backgroundColor: Colors.red,
      ),
      body: Column(
        children: [
          Expanded(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Container(
                  decoration: const BoxDecoration(color: Colors.red),
                  child: const Center(child: Text("Container 1")),
                ),
              ),
              Expanded(
                child: Container(
                  decoration: const BoxDecoration(color: Colors.teal),
                  child: const Center(child: Text("Container 2")),
                ),
              ),
              Expanded(
                child: Container(
                  decoration: const BoxDecoration(color: Colors.blue),
                  child: const Center(child: Text("Container 3")),
                ),
              ),
            ],
          )),
          Expanded(
              child: Container(
            decoration: const BoxDecoration(color: Colors.teal),
            child: const Center(child: Text("Container 4")),
          )),
          Expanded(
              child: Container(
            decoration: const BoxDecoration(color: Colors.blueAccent),
            child: const Center(child: Text("Container 5")),
          )),
          Expanded(
              child: Container(
            decoration: const BoxDecoration(color: Colors.green),
            child: const Center(child: Text("Container 6")),
          )),
        ],
      ),
    );
  }
}
