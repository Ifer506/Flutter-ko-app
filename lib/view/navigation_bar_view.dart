import 'package:applications/view/dashboard_view.dart';
import 'package:flutter/material.dart';

class NavigationBarView extends StatelessWidget {
  const NavigationBarView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard"),

      ),
      
    );
  }
}