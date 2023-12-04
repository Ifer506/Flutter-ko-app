import 'package:flutter/material.dart';

class GridViewLesson extends StatefulWidget {
  const GridViewLesson({super.key});

  @override
  State<GridViewLesson> createState() => _GridViewLessonState();
}

class _GridViewLessonState extends State<GridViewLesson> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Grid View"),
          centerTitle: true,
        ),
        body: GridView.count(
          crossAxisCount: 4,
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
          padding: const EdgeInsets.all(8),
          children: [
            for (int i = 0; i < 10; i++) ...{
              ElevatedButton(
                onPressed: () {},
                child: Card(
                  // color: Colors.teal,

                  child: Text(
                    "$i",
                  ),
                ),
              )
            }
          ],
        ));
  }
}
