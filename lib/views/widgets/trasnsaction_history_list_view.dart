import 'package:adaptive_dash_board/models/transaction_iteam_model.dart';
import 'package:adaptive_dash_board/views/widgets/trasnaction_iteam.dart';
import 'package:flutter/material.dart';

class TrasnsactionHistoryListView extends StatefulWidget {
  const TrasnsactionHistoryListView({super.key});

  @override
  State<TrasnsactionHistoryListView> createState() =>
      _TrasnsactionHistoryListViewState();
}

class _TrasnsactionHistoryListViewState
    extends State<TrasnsactionHistoryListView> {
  List<TransactionIteamModel> iteams = [
    TransactionIteamModel(
      title: 'Cash Withdrawal',
      subTitle: '13 Apr, 2022 ',
      amount: r'$20,129',
      isWithdraw: false,
    ),
    TransactionIteamModel(
      title: 'Landing Page project',
      subTitle: '13 Apr, 2022 at 3:30 PM',
      amount: r'$2,000',
      isWithdraw: true,
    ),
    TransactionIteamModel(
      title: 'Juni Mobile App project',
      subTitle: '13 Apr, 2022 at 3:30 PM',
      amount: r'$20,129',
      isWithdraw: true,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: iteams.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 16),
          child: TrasnactionIteam(
            transactionIteamModel: iteams[index],
          ),
        );
      },
    );
  }
}
