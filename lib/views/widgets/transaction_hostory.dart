import 'package:adaptive_dash_board/utils/app_styles.dart';
import 'package:adaptive_dash_board/views/widgets/transaction_history_header.dart';
import 'package:adaptive_dash_board/views/widgets/trasnsaction_history_list_view.dart';
import 'package:flutter/material.dart';

class TransactionHostory extends StatelessWidget {
  const TransactionHostory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TransactionHistoryHeader(),
        const SizedBox(
          height: 24,
        ),
        Text(
          '13 April 2022',
          style: AppStyles.styleMedium16(context).copyWith(
            color: const Color(0XFFAAAAAA),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        const TrasnsactionHistoryListView(),
      ],
    );
  }
}
