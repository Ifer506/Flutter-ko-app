import 'package:applications/view/container_view.dart';
import 'package:applications/view/dash_bottom_view.dart';
import 'package:applications/view/expanded_view.dart';
import 'package:applications/view/grid_view.dart';
import 'package:applications/view/listview_self.dart';
import 'package:applications/view/listview_view.dart';
import 'package:applications/view/output_listview_self.dart';
import 'package:applications/view/random_view.dart';
import 'package:applications/view/rows_and_column.dart';
import 'package:applications/view/snackbar_view.dart';
import 'package:applications/view/splash_view.dart';
import 'package:applications/view/stack_view.dart';
import 'package:flutter/material.dart';

import 'arithmetic_view.dart';
import 'image_view.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
        elevation: 0,
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Arithmetic()),
                      );
                    },
                    child: const Text("Arithmetic")),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Randowm()),
                      );
                    },
                    child: const Text("Random")),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ContainerView()),
                      );
                    },
                    child: const Text("Container")),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ImageView()),
                      );
                    },
                    child: const Text("Image")),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ListViews()),
                      );
                    },
                    child: const Text("ListView")),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SelfListView()),
                      );
                    },
                    child: const Text("ListView-Self")),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const DisplayOutputList()),
                      );
                    },
                    child: const Text("Display ListView-Self")),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ExpandedWidget()),
                      );
                    },
                    child: const Text("Expanded")),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SnackBarPractice()),
                      );
                    },
                    child: const Text("SnackBar")),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const RowAndColumn()),
                      );
                    },
                    child: const Text("Row and Column Class Task")),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const GridViewLesson()),
                      );
                    },
                    child: const Text("Grid view")),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const StackView()),
                      );
                    },
                    child: const Text("stack")),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const DashBottomView()),
                      );
                    },
                    child: const Text("Dashboard")),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SplashScreen()),
                      );
                    },
                    child: const Text("Splash Screen")),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
