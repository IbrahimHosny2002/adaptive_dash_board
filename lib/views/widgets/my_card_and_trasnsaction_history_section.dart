import 'package:adaptive_dash_board/views/widgets/custom_background_color.dart';
import 'package:adaptive_dash_board/views/widgets/my_card_section.dart';
import 'package:adaptive_dash_board/views/widgets/transaction_hostory.dart';
import 'package:flutter/material.dart';

class MyCardAndTrasnsactionHistorySection extends StatelessWidget {
  const MyCardAndTrasnsactionHistorySection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        children: [
          MyCardSection(),
          Divider(
            height: 32,
            color: Color(0XFFF1F1F1),
            thickness: 3,
          ),
          SizedBox(
            height: 8,
          ),
          TransactionHostory(),
        ],
      ),
    );
  }
}
