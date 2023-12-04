import 'package:flutter/material.dart';

class StackView extends StatefulWidget {
  const StackView({super.key});

  @override
  State<StackView> createState() => _StackViewState();
}

class _StackViewState extends State<StackView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stack "),
      ),
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            height: 400,
            width: double.infinity,
            color: Colors.amber.shade100,
            child: Center(
              child: Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQNNrF_joUiTsuqQeL8Dsl2Cyd-Zdj8dRqVQQ&usqp=CAU"),
            ),
          ),
          Positioned(
              bottom: -20,
              left: -20,
              child: SizedBox(
                height: 100,
                width: 100,
                // color: Colors.blue,
                child: IconButton(
                    onPressed: () {}, icon: const Icon(Icons.thumb_up_alt)),
              )),
          Positioned(
              bottom: -20,
              left: 30,
              child: SizedBox(
                height: 100,
                width: 100,
                // color: Colors.blue,

                child: IconButton(
                    onPressed: () {}, icon: const Icon(Icons.comment)),
              )),
          Positioned(
              top: -20,
              right: -20,
              child: SizedBox(
                height: 100,
                width: 100,
                // color: Colors.teal,
                child:
                    IconButton(onPressed: () {}, icon: const Icon(Icons.edit)),
              )),
        ],
      ),
    );
  }
}
