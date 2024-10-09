import 'package:adaptive_dash_board/utils/size_config.dart';
import 'package:adaptive_dash_board/views/widgets/detailed_income_chart.dart';
import 'package:adaptive_dash_board/views/widgets/income_chart.dart';
import 'package:adaptive_dash_board/views/widgets/income_details.dart';
import 'package:flutter/material.dart';

class IncomeBody extends StatelessWidget {
  const IncomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return width >= SizeConfig.desktop && width < 1799
        ? const Expanded(
            child: Padding(
              padding: EdgeInsets.all(16),
              child: DetailedIncomeChart(),
            ),
          )
        : const Row(
            children: [
              Expanded(
                child: IncomeChart(),
              ),
              SizedBox(
                width: 16,
              ),
              Expanded(
                flex: 2,
                child: IncomeDetails(),
              )
            ],
          );
  }
}
