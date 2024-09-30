import 'package:adaptive_dash_board/models/all_expenses_iteam_model.dart';
import 'package:adaptive_dash_board/utils/app_images.dart';
import 'package:adaptive_dash_board/views/widgets/all_expenses_iteam.dart';
import 'package:flutter/material.dart';

class AllExpensesIteamRow extends StatefulWidget {
  const AllExpensesIteamRow({super.key});

  @override
  State<AllExpensesIteamRow> createState() => _AllExpensesIteamRowState();
}

class _AllExpensesIteamRowState extends State<AllExpensesIteamRow> {
  final items = [
    AllExpensesIteamModel(
      image: Assets.imagesBalance,
      title: 'Balance',
      date: 'April 2022',
      price: r'$20,129',
    ),
    AllExpensesIteamModel(
      image: Assets.imagesIncome,
      title: 'Income',
      date: 'April 2022',
      price: r'$20,129',
    ),
    AllExpensesIteamModel(
      image: Assets.imagesExpenses,
      title: 'Expenses',
      date: 'April 2022',
      price: r'$20,129',
    ),
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: items.asMap().entries.map((e) {
        int index = e.key;
        var item = e.value;
        if (index == 1) {
          return Expanded(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = index;
                });
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: AllExpensesIteam(
                    allExpensesIteamModel: item,
                    isSelected: selectedIndex == index),
              ),
            ),
          );
        } else {
          return Expanded(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = index;
                });
              },
              child: AllExpensesIteam(
                  allExpensesIteamModel: item,
                  isSelected: selectedIndex == index),
            ),
          );
        }
      }).toList(),
    );
  }
}
