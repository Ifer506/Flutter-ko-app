import 'package:applications/app/common/my_listview_seperated.dart';
import 'package:flutter/material.dart';

import '../model/student_model.dart';

class DisplayOutputList extends StatefulWidget {
  const DisplayOutputList({super.key});

  @override
  State<DisplayOutputList> createState() => _DisplayOutputListState();
}

class _DisplayOutputListState extends State<DisplayOutputList> {
  List<Student> lstStudents = [];

  @override
  void didChangeDependencies() {
    lstStudents = ModalRoute.of(context)!.settings.arguments as List<Student>;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Output from List View Self"),
        ),
        body: Expanded(
          child: MyListViewSeperated(lstStudents: lstStudents)));
  }
}
