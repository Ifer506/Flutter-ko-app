import 'package:applications/view/bottom_view/date&time_view.dart';
import 'package:applications/view/bottom_view/cart_view.dart';
import 'package:applications/view/bottom_view/home_view.dart';
import 'package:applications/view/bottom_view/settings_view.dart';
import 'package:flutter/material.dart';

class DashBottomView extends StatefulWidget {
  const DashBottomView({super.key});

  @override
  State<DashBottomView> createState() => _DashBottomViewState();
}

class _DashBottomViewState extends State<DashBottomView> {
  int _selectedIndex = 0;
  List<Widget> lstButton = [
    const HomeView(),
    const CartView(),
    const AboutView(),
    const SettingView()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dash ko board"),
      ),
      body: lstButton[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.teal,
        selectedItemColor: Colors.amber,
        unselectedItemColor: Colors.black,
        currentIndex: _selectedIndex,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_rounded), label: 'Cart'),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.more_horiz_sharp), label: 'About'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Setting'),
        ],
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}
