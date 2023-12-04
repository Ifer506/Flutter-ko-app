import 'package:flutter/material.dart';

class ImageView extends StatefulWidget {
  const ImageView({super.key});

  @override
  State<ImageView> createState() => _ImageViewState();
}

class _ImageViewState extends State<ImageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.asset('assets/images/dog.jpeg'),
              ),
              Image.asset('assets/images/hollow.gif'),
              Image.network(
                  'https://hips.hearstapps.com/hmg-prod/images/womanyellingcat-1573233850.jpg')
            ],
          ),
        ),
      )),
    );
  }
}
