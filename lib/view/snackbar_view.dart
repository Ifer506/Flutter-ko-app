import 'package:applications/app/common/my_snackbar.dart';
import 'package:flutter/material.dart';

class SnackBarPractice extends StatefulWidget {
  const SnackBarPractice({super.key});

  @override
  State<SnackBarPractice> createState() => _SnackBarPracticeState();
}

class _SnackBarPracticeState extends State<SnackBarPractice> {
  // void _showSnackbar() {
  //   ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
  //     content: Text("Hello"),
  //     duration: Duration(seconds: 1),
  //   ));
  // }

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
            Center(
              child: ElevatedButton(
                onPressed: () {
                  mysnackbar(context, "It is true, that he indeed is an idiot",
                      color: Colors.teal);
                },
                child: const Text("Button 1"),
              ),
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  mysnackbar(context, "Error", color: Colors.red);
                },
                child: const Text("Button 2"),
              ),
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    content: Text("Hello"),
                    duration: Duration(seconds: 1),
                    backgroundColor: Colors.amber,
                    elevation: 10,
                    behavior: SnackBarBehavior.floating,
                  ));
                },
                child: const Text("Button 2"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
