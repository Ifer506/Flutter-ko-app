import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushNamed(context, '/');
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text("Splash Screen"),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: CircularProgressIndicator(),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'V : 1.0.0',
            style: TextStyle(color: Colors.red),
          )
        ],
      ),
    );
  }
}
