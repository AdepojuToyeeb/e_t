import 'package:expense_app/models/expense.dart';
import 'package:expense_app/widgets/expenses/expense_item.dart';
import 'package:flutter/material.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList({
    required this.expenseList,
    required this.removeExpense,
    super.key,
  });

  final List<Expense> expenseList;
  final void Function(Expense expense) removeExpense;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: expenseList.length,
      itemBuilder: (ctx, index) => Dismissible(
        key: ValueKey(expenseList[index]),
        onDismissed: (direction) {
          removeExpense(
            expenseList[index],
          );
        },
        child: ExpenseItem(expense: expenseList[index]),
      ),
    );
  }
}