import 'package:expense_app/models/expense.dart';
import 'package:expense_app/widgets/expenses/expense_item.dart';
import 'package:flutter/material.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList({
    required this.expenseList,
    super.key,
  });

  final List<Expense> expenseList;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: expenseList.length,
      itemBuilder: (ctx, index) => ExpenseItem(expense: expenseList[index]),
    );
  }
}
