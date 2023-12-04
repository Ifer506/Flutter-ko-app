import 'package:flutter/material.dart';

mysnackbar(BuildContext context, String message, {Color color = Colors.teal}) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: Text(message),
    duration: const Duration(seconds: 1),
    backgroundColor: color,
    behavior: SnackBarBehavior.floating,
  ));
}
