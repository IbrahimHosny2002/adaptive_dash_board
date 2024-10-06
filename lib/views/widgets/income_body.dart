import 'package:adaptive_dash_board/views/widgets/income_chart.dart';
import 'package:adaptive_dash_board/views/widgets/income_details.dart';
import 'package:flutter/material.dart';

class IncomeBody extends StatelessWidget {
  const IncomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: IncomeChart(),
        ),
        SizedBox(
          width: 16,
        ),
        Expanded(
          child: IncomeDetails(),
        )
      ],
    );
  }
}
