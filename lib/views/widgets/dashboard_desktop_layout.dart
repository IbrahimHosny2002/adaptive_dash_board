import 'package:adaptive_dash_board/views/widgets/all_expenses_and_quick_invoice_section.dart';
import 'package:adaptive_dash_board/views/widgets/custom_drawer.dart';
import 'package:adaptive_dash_board/views/widgets/incomr_section.dart';
import 'package:adaptive_dash_board/views/widgets/my_card_and_trasnsaction_history_section.dart';
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
          width: 32,
        ),
        Expanded(
          flex: 2,
          child: AllExpensesAndQuickInvoiceSection(),
        ),
        SizedBox(
          width: 16,
        ),
        Expanded(
          flex: 1,
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              MyCardAndTrasnsactionHistorySection(),
              SizedBox(
                height: 24,
              ),
              Expanded(
                child: IncomeSection(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
