import 'package:applications/model/student_model.dart';
import 'package:flutter/material.dart';

class SelfListView extends StatefulWidget {
  const SelfListView({super.key});

  @override
  State<SelfListView> createState() => _SelfListViewState();
}

class _SelfListViewState extends State<SelfListView> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController fnameController = TextEditingController();
  final TextEditingController lnameController = TextEditingController();
  String? city;

  // void saveData() {

  //   setState(() {
  //     String newName = fnameController.text + lnameController.text;
  //     if (newName.isNotEmpty) {
  //       names.add(newName);
  //       fnameController.clear();
  //       lnameController.clear();
  //     }
  //   });
  // }

  final items = [
    const DropdownMenuItem(value: "Kathmandu", child: Text("Kathmandu")),
    const DropdownMenuItem(value: "Pokhara", child: Text("Pokhara")),
    const DropdownMenuItem(value: "Lalitpur", child: Text("Lalitpur")),
  ];
  List<Student> lstStudents = [];

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List View Self"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Expanded(
                  child: SingleChildScrollView(
                child: Column(
                  children: [
                    TextField(
                      controller: fnameController,
                      decoration: const InputDecoration(
                          labelText: 'Enter first name',
                          border: OutlineInputBorder()),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextField(
                      controller: lnameController,
                      decoration: const InputDecoration(
                          labelText: 'Enter Last name',
                          border: OutlineInputBorder()),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    DropdownButtonFormField(
                      items: items,
                      onChanged: (value) {
                        setState(() {
                          city = value;
                        });
                      },
                      hint: const Text("Select city"),
                      decoration: const InputDecoration(
                        labelText: 'Select city',
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value == null) {
                          return 'Please select city';
                        } else {
                          return null;
                        }
                      },
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate() &&
                              city != null) {
                            Student student = Student(
                                fname: fnameController.text,
                                lname: lnameController.text,
                                city: city!);

                            setState(() {
                              lstStudents.add(student);
                            });
                          }
                        },
                        child: const Text("Save data")),
                    const SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/OutputlistViewSelf',
                              arguments: lstStudents);
                        },
                        child: const Text("View Data"))
                  ],
                ),
              )),
              Expanded(
                child: lstStudents.isNotEmpty
                    ? ListView.builder(
                        itemCount: lstStudents.length,
                        itemBuilder: (context, index) {
                          return ListTile(
                            leading: const Icon(Icons.person),
                            title: Text(
                              '${lstStudents[index].fname} ${lstStudents[index].lname}',
                            ),
                            subtitle: Text(lstStudents[index].city),
                            trailing: Wrap(
                              spacing: 12,
                              children: [
                                IconButton(
                                  onPressed: () {
                                    setState(() {
                                      lstStudents.removeAt(index);
                                    });
                                  },
                                  icon: const Icon(Icons.edit),
                                ),
                                IconButton(
                                  onPressed: () {
                                    setState(() {
                                      lstStudents.removeAt(index);
                                    });
                                  },
                                  icon: const Icon(Icons.delete),
                                ),
                              ],
                            ),
                            onTap: () {},
                          );
                        },
                      )
                    : const Text('No data'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
