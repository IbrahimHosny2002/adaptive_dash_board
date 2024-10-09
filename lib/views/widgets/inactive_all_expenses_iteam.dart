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
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: Color(0xFFF1F1F1)),
          borderRadius: BorderRadius.circular(12),
        ),
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
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              allExpensesIteamModel.title,
              style: AppStyles.styleSemiBold16(context),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              allExpensesIteamModel.date,
              style: AppStyles.styleRegular14(context),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              allExpensesIteamModel.price,
              style: AppStyles.styleSemiBold24(context),
            ),
          ),
        ],
      ),
    );
  }
}
