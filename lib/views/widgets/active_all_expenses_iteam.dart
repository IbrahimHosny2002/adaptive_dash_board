import 'package:adaptive_dash_board/models/all_expenses_iteam_model.dart';
import 'package:adaptive_dash_board/utils/app_styles.dart';
import 'package:adaptive_dash_board/views/widgets/all_expenses_iteam_header.dart';
import 'package:flutter/material.dart';

class ActiveAllExpensesIteam extends StatelessWidget {
  const ActiveAllExpensesIteam(
      {super.key, required this.allExpensesIteamModel});
  final AllExpensesIteamModel allExpensesIteamModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xff4EB7F2),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesIteamHeader(
            image: allExpensesIteamModel.image,
            imageColor:  Colors.white,
            iconColor: Colors.white,
          ),
          const SizedBox(
            height: 32,
          ),
          Text(
            allExpensesIteamModel.title,
            style: AppStyles.styleSemiBold16.copyWith(color: Colors.white),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            allExpensesIteamModel.date,
            style: AppStyles.styleRegular14
                .copyWith(color: const Color(0xffFAFAFA)),
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            allExpensesIteamModel.price,
            style: AppStyles.styleSemiBold24.copyWith(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
