import 'package:billing_project/billing.dart';
import "package:flutter/material.dart";

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Billed',
    theme: ThemeData(
      appBarTheme: AppBarTheme(
        color: Color.fromARGB(255, 19, 58, 231),
      ),
    ),
    home: Billing(),
  ));
}

