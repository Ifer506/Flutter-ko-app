import 'package:applications/app/common/my_snackbar.dart';
import 'package:applications/model/student_model.dart';
import 'package:flutter/material.dart';

class MyListViewSeperated extends StatelessWidget {
  const MyListViewSeperated({super.key, required this.lstStudents});

  final List<Student> lstStudents;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: lstStudents.isEmpty
          ? const Center(
              child: Text("no data in lstStudent"),
            )
          : ListView.separated(
              separatorBuilder: (context, index) => const Divider(
                thickness: 2,
                color: Colors.teal,
                indent: 10,
                endIndent: 10,
              ),
              itemCount: lstStudents.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    mysnackbar(context, lstStudents[index].fname);
                  },
                  onDoubleTap: () {
                    mysnackbar(context, "Stupid $lstStudents[index].fname",
                        color: const Color.fromARGB(255, 89, 39, 35));
                  },
                  child: SizedBox(
                    height: 100,
                    width: double.infinity,

                    child: Card(
                      color: Colors.teal, 
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          // crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '${lstStudents[index].fname} ${lstStudents[index].lname}',
                            ),
                            Text(lstStudents[index].city),
                          ]),
                    ),
                    // child: ListTile(
                    //   leading: const Icon(Icons.person),
                    //   title: Text(
                    //     '${lstStudents[index].fname} ${lstStudents[index].lname}',
                    //   ),
                    //   subtitle: Text(lstStudents[index].city),
                    //   trailing: Wrap(
                    //     spacing: 12,
                    //     children: [
                    //       IconButton(
                    //         onPressed: () {
                    //           // setState(() {
                    //           //   lstStudents.removeAt(index);
                    //           // });
                    //         },
                    //         icon: const Icon(Icons.edit),
                    //       ),
                    //       IconButton(
                    //         onPressed: () {
                    //           // setState(() {
                    //           //   lstStudents.removeAt(index);
                    //           // });
                    //         },
                    //         icon: const Icon(Icons.delete),
                    //       ),
                    //     ],
                    //   ),
                    //   onTap: () {},
                    // ),
                  ),
                );
              },
            ),
    );
  }
}
