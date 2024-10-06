import 'package:adaptive_dash_board/models/transaction_iteam_model.dart';
import 'package:adaptive_dash_board/utils/app_styles.dart';
import 'package:flutter/material.dart';

class TrasnactionIteam extends StatelessWidget {
  const TrasnactionIteam({super.key, required this.transactionIteamModel});
  final TransactionIteamModel transactionIteamModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xffFAFAFA),
        borderRadius: BorderRadius.circular(8)
      ),
      child: ListTile(
        title: Text(
          transactionIteamModel.title,
          style: AppStyles.styleSemiBold16,
        ),
        subtitle: Text(
          transactionIteamModel.subTitle,
          style:
              AppStyles.styleRegular16.copyWith(color: const Color(0xffAAAAAA)),
        ),
        trailing: Text(
          transactionIteamModel.amount,
          style: AppStyles.styleSemiBold20.copyWith(
            color: transactionIteamModel.isWithdraw
                ? const Color(0xff7DD97B)
                : const Color(0xffF3735E),
          ),
        ),
      ),
    );
  }
}
