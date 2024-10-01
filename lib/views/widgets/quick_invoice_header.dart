import 'package:adaptive_dash_board/utils/app_styles.dart';
import 'package:flutter/material.dart';

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text(
          'Quick Invoice',
          style: AppStyles.styleSemiBold20,
        ),
        Spacer(),
        CircleAvatar(
          radius: 24,
          backgroundColor: Color(0xffFAFAFA),
          child: Center(
            child: Icon(
              size: 18,
              Icons.add,
              color: Color(0xff4EB7F2),
            ),
          ),
        ),
      ],
    );
  }
}