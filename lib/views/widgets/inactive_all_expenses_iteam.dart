import 'package:adaptive_dash_board/models/all_expenses_iteam_model.dart';
import 'package:adaptive_dash_board/utils/app_styles.dart';
import 'package:adaptive_dash_board/views/widgets/all_expenses_iteam_header.dart';
import 'package:flutter/material.dart';

class InactiveAllExpensesIteam extends StatelessWidget {
  const InactiveAllExpensesIteam(
      {super.key, required this.allExpensesIteamModel});
  final AllExpensesIteamModel allExpensesIteamModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color:  Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesIteamHeader(
            image: allExpensesIteamModel.image,
            imageColor: const Color(0xff4EB7F2),
            iconColor: const Color(0xff064061),
          ),
          const SizedBox(
            height: 32,
          ),
          Text(
            allExpensesIteamModel.title,
            style: AppStyles.styleSemiBold16,
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            allExpensesIteamModel.date,
            style: AppStyles.styleRegular14,
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            allExpensesIteamModel.price,
            style: AppStyles.styleSemiBold24,
          ),
        ],
      ),
    );
  }
}
