import 'package:flutter/material.dart';

class AboutView extends StatefulWidget {
  const AboutView({super.key});

  @override
  State<AboutView> createState() => _AboutViewState();
}

class _AboutViewState extends State<AboutView> {
  TimeOfDay? time = TimeOfDay.now();
  DateTime? date = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            "Time : ${time!.hour}:${time!.minute}",
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          ElevatedButton(
              onPressed: () async {
                TimeOfDay? newTime = await showTimePicker(
                  context: context,
                  initialTime: time!,
                );
                if (newTime != time) {
                  setState(() {
                    time = newTime;
                  });
                }
              },
              child: const Text("Change Time")),
          Text(
            "Date : ${date!.day}/${date!.month}/${date!.year}",
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          ElevatedButton(
              onPressed: () async {
                DateTime? newDate = await showDatePicker(
                    context: context,
                    firstDate: DateTime(1950),
                    lastDate: DateTime(2050));
                if (newDate != date) {
                  setState(() {
                    date = newDate;
                  });
                }
              },
              child: const Text("Change Date")),
        ],
      ),
    );
  }
}
