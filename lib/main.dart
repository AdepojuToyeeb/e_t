import 'package:expense_app/widgets/expenses/expenses.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData().copyWith(
      scaffoldBackgroundColor: Color.fromARGB(126, 124, 121, 49),
    ),
    home: const Expenses(),
  ));
}