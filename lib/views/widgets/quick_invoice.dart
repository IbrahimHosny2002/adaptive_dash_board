import 'package:adaptive_dash_board/views/widgets/custom_background_color.dart';
import 'package:adaptive_dash_board/views/widgets/custom_button_section.dart';
import 'package:adaptive_dash_board/views/widgets/latest_transaction.dart';
import 'package:adaptive_dash_board/views/widgets/quick_invoice_header.dart';
import 'package:adaptive_dash_board/views/widgets/title_text_field_section.dart';
import 'package:flutter/material.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuickInvoiceHeader(),
          SizedBox(
            height: 24,
          ),
          LatestTransaction(),
          Divider(
            height: 24,
            color: Color(0xffF1F1F1),
          ),
          TitleTextFieldSection(),
          SizedBox(
            height: 16,
          ),
          CustomButtonSection(),
        ],
      ),
    );
  }
}