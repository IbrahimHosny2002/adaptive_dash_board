import 'package:adaptive_dash_board/views/widgets/all_expenses_and_quick_invoice_section.dart';
import 'package:adaptive_dash_board/views/widgets/incomr_section.dart';
import 'package:adaptive_dash_board/views/widgets/my_card_and_trasnsaction_history_section.dart';
import 'package:flutter/material.dart';

class DashboardMobileLayout extends StatelessWidget {
  const DashboardMobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          AllExpensesAndQuickInvoiceSection(),
          SizedBox(
            height: 24,
          ),
          MyCardAndTrasnsactionHistorySection(),
          SizedBox(
            height: 24,
          ),
          IncomeSection(),
        ],
      ),
    );
  }
}