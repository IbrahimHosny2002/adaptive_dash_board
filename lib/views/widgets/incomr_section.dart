import 'package:adaptive_dash_board/views/widgets/custom_background_color.dart';
import 'package:adaptive_dash_board/views/widgets/income_body.dart';
import 'package:adaptive_dash_board/views/widgets/income_header.dart';
import 'package:flutter/material.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IncomeHeader(),
          SizedBox(
            height: 16,
          ),
          IncomeBody(),
        ],
      ),
    );
  }
}
