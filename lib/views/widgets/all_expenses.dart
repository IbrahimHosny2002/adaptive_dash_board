import 'package:adaptive_dash_board/views/widgets/all_expenses_header.dart';
import 'package:adaptive_dash_board/views/widgets/all_expenses_iteam_row.dart';
import 'package:adaptive_dash_board/views/widgets/custom_background_color.dart';
import 'package:flutter/material.dart';

class AllExpenses extends StatefulWidget {
  const AllExpenses({super.key});

  @override
  State<AllExpenses> createState() => _AllExpensesState();
}

class _AllExpensesState extends State<AllExpenses> {
  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        children: [
          AllExpensesHeader(),
          SizedBox(
            height: 16,
          ),
          AllExpensesIteamRow(),
        ],
      ),
    );
  }
}
