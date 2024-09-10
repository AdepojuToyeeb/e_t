import 'package:expense_app/widgets/expenses/expenses_list.dart';
import 'package:expense_app/models/expense.dart';
import 'package:expense_app/widgets/new_expense.dart';
import 'package:flutter/material.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() {
    return _ExpensesState();
  }
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredExpenses = [
    Expense(
      amount: 100,
      title: "Flutter Course",
      date: DateTime.now(),
      category: Category.leisure,
    ),
    Expense(
      amount: 20.99,
      title: "Cinema",
      date: DateTime.now(),
      category: Category.work,
    ),
    Expense(
      amount: 20.99,
      title: "Cinema",
      date: DateTime.now(),
      category: Category.food,
    ),
  ];

  void _openAddExpenseOverlay() {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (ctx) => NewExpense(onAddExpense: _addExpense),
    );
  }

  void _addExpense(Expense expense) {
    setState(() {
      _registeredExpenses.add(expense);
    });
  }

  void _removeExpense(Expense expense) {
    setState(() {
      _registeredExpenses.remove(expense);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(227, 42, 40, 54),
        title: const Text(
          "Expense Tracker",
          style: TextStyle(
              fontSize: 18, color: Color.fromARGB(255, 255, 255, 255)),
        ),
        actions: [
          IconButton(
            onPressed: _openAddExpenseOverlay,
            color: Colors.white,
            icon: const Icon(Icons.add),
          )
        ],
      ),
      body: Column(
        children: [
          const Text("The Chart"),
          Expanded(
            child: ExpensesList(
              expenseList: _registeredExpenses,
              removeExpense: _removeExpense,
            ),
          )
        ],
      ),
    );
  }
}