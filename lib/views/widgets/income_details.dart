import 'package:adaptive_dash_board/models/income_details_iteam_model.dart';
import 'package:adaptive_dash_board/views/widgets/income_details_iteam.dart';
import 'package:flutter/material.dart';

class IncomeDetails extends StatefulWidget {
  const IncomeDetails({super.key});

  @override
  State<IncomeDetails> createState() => _IncomeDetailsState();
}

class _IncomeDetailsState extends State<IncomeDetails> {
  List<IncomeDetailsIteamModel> items = [
    IncomeDetailsIteamModel(
      color: const Color(0xff208CC8),
      title: 'Design service',
      amount: '40%',
    ),
    IncomeDetailsIteamModel(
      color: const Color(0xff4EB7F2),
      title: 'Design product',
      amount: '25%',
    ),
    IncomeDetailsIteamModel(
      color: const Color(0xff064061),
      title: 'Product royalti',
      amount: '20%',
    ),
    IncomeDetailsIteamModel(
      color: const Color(0xffE2DECD),
      title: 'Design service',
      amount: '22%',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: items
          .map(
            (e) => IncomeDetailsIteam(incomeDetailsIteamModel: e),
          )
          .toList(),
    );
  }
}
