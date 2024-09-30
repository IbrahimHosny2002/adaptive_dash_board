import 'package:adaptive_dash_board/views/widgets/all_expenses_header.dart';
import 'package:adaptive_dash_board/views/widgets/all_expenses_iteam_row.dart';
import 'package:flutter/material.dart';

class AllExpenses extends StatefulWidget {
  const AllExpenses({super.key});

  @override
  State<AllExpenses> createState() => _AllExpensesState();
}

class _AllExpensesState extends State<AllExpenses> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        left: 16,
        right: 16,
        top: 16,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: const Column(
        children: [
          AllExpensesHeader(),
          SizedBox(
            height: 16,
          ),
          AllExpensesIteamRow(),
          SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}
