import 'package:adaptive_dash_board/models/all_expenses_iteam_model.dart';
import 'package:adaptive_dash_board/views/widgets/active_all_expenses_iteam.dart';
import 'package:adaptive_dash_board/views/widgets/inactive_all_expenses_iteam.dart';
import 'package:flutter/material.dart';

class AllExpensesIteam extends StatelessWidget {
  const AllExpensesIteam(
      {super.key,
      required this.allExpensesIteamModel,
      required this.isSelected});
  final AllExpensesIteamModel allExpensesIteamModel;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return isSelected
        ? ActiveAllExpensesIteam(allExpensesIteamModel: allExpensesIteamModel)
        : InactiveAllExpensesIteam(
            allExpensesIteamModel: allExpensesIteamModel);
  }
}
