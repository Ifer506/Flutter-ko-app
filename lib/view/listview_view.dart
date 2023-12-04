import 'package:flutter/material.dart';

class ListViews extends StatefulWidget {
  const ListViews({super.key});

  @override
  State<ListViews> createState() => _ListViewsState();
}

class _ListViewsState extends State<ListViews> {
  final List<String> entries = <String>['A', 'B', 'C'];
  final List<int> colorCodes = <int>[100, 200, 300];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List View"),
        elevation: 0,
      ),
      body: Padding(
          padding: const EdgeInsets.all(8),
          child: ListView.builder(
              itemCount: entries.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  height: 50,
                  color: Colors.amber,
                  child: Center(
                    child: Text('Enter $entries & $colorCodes'),
                  ),
                );
              })),
    );
  }
}
