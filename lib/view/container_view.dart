import 'package:flutter/material.dart';

class ContainerView extends StatelessWidget {
  const ContainerView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Container"),
          centerTitle: true,
          elevation: 0,
        ),
        body: SafeArea(
            child: Padding(
                padding: const EdgeInsets.all(8),
                child: Center(
                  child: Container(
                    height: double.infinity,
                    width: double.infinity,
                    alignment: Alignment.center,
                    child: const Column(children: [
                      Text(
                        "Hello world",
                        style:
                            TextStyle(fontFamily: 'Roboto Black', fontSize: 20),
                      ),
                      Text(
                        "Hello world",
                        style:
                            TextStyle(fontFamily: 'Roboto Bold', fontSize: 20),
                      ),
                      Text(
                        "Hello world",
                        style: TextStyle(
                            fontFamily: 'Roboto light',
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ]),
                    // decoration: const BoxDecoration(
                    // color: Colors.amber,
                    // borderRadius: BorderRadius.circular(10),
                    // border: Border.all(color: Colors.black, width: 1)),
                    // child: Text(
                    //   "Hello world",
                    // )),
                  ),
                ))));
  }
}
