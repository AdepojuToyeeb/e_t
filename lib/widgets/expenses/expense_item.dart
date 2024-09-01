import 'package:expense_app/models/expense.dart';
import 'package:flutter/material.dart';

class ExpenseItem extends StatelessWidget {
  const ExpenseItem({required this.expense, super.key});
  final Expense expense;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Text(expense.title),
    );
  }
}
