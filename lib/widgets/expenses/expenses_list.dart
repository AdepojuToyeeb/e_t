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
        direction: DismissDirection.endToStart,
        key: ValueKey(expenseList[index]),
        background: Container(
          color: Theme.of(context).colorScheme.error.withOpacity(0.7),
          margin: Theme.of(context).cardTheme.margin,
        ),
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