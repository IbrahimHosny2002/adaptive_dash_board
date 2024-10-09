import 'package:adaptive_dash_board/models/income_details_iteam_model.dart';
import 'package:adaptive_dash_board/utils/app_styles.dart';
import 'package:flutter/material.dart';

class IncomeDetailsIteam extends StatelessWidget {
  const IncomeDetailsIteam({super.key, required this.incomeDetailsIteamModel});
  final IncomeDetailsIteamModel incomeDetailsIteamModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 6,
        backgroundColor: incomeDetailsIteamModel.color,
      ),
      title: Text(
        incomeDetailsIteamModel.title,
        style: AppStyles.styleRegular16(context),
      ),
      trailing: Text(
        incomeDetailsIteamModel.amount,
        style: AppStyles.styleMedium16(context)
            .copyWith(color: const Color(0xff208CC8)),
      ),
    );
  }
}
