import 'package:adaptive_dash_board/views/widgets/all_expenses.dart';
import 'package:adaptive_dash_board/views/widgets/custom_drawer.dart';
import 'package:flutter/material.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          flex: 1,
          child: CustomDrawer(),
        ),
        SizedBox(
          width: 16,
        ),
        Expanded(
          flex: 2,
          child: Column(
            children: [
              SizedBox(
                height: 32,
              ),
              AllExpenses(),
            ],
          ),
        ),
      ],
    );
  }
}
