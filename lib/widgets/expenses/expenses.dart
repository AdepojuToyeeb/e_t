import 'package:expense_app/widgets/expenses/expenses_list.dart';
import 'package:expense_app/models/expense.dart';
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
      category: Category.work,
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
      category: Category.work,
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
      category: Category.work,
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
      category: Category.work,
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
      category: Category.work,
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
      category: Category.work,
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
      category: Category.work,
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
      category: Category.work,
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
      category: Category.work,
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
      category: Category.work,
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
      category: Category.work,
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
      category: Category.work,
    ),
    Expense(
      amount: 20.99,
      title: "Cinema",
      date: DateTime.now(),
      category: Category.work,
    ),
    Expense(
      amount: 20.99,
      title: "Cinemas",
      date: DateTime.now(),
      category: Category.work,
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
      category: Category.work,
    ),
    Expense(
      amount: 20.99,
      title: "Cinema",
      date: DateTime.now(),
      category: Category.work,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:const Color.fromRGBO(255, 200, 10, 0.9),

        title: const Text(
          "Expense Tracker",
          style: TextStyle(fontSize: 18, color: Colors.red),
        ),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.add))],
      ),
      body: Column(
        children: [
          const Text("The Chart"),
          Expanded(
            child: ExpensesList(
              expenseList: _registeredExpenses,
            ),
          )
        ],
      ),
    );
  }
}
