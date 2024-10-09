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
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        color: const Color(0xFF4DB7F2),
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: Color(0xFF4DB7F2)),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesIteamHeader(
            image: allExpensesIteamModel.image,
            imageColor: Colors.white,
            iconColor: Colors.white,
          ),
          const SizedBox(
            height: 32,
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              allExpensesIteamModel.title,
              style: AppStyles.styleSemiBold16(context)
                  .copyWith(color: Colors.white),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              allExpensesIteamModel.date,
              style: AppStyles.styleRegular14(context)
                  .copyWith(color: const Color(0xffFAFAFA)),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              allExpensesIteamModel.price,
              style: AppStyles.styleSemiBold24(context)
                  .copyWith(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
