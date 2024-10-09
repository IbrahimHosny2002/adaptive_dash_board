import 'package:adaptive_dash_board/utils/app_styles.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class DetailedIncomeChart extends StatefulWidget {
  const DetailedIncomeChart({super.key});

  @override
  State<DetailedIncomeChart> createState() => _DetailedIncomeChartState();
}

class _DetailedIncomeChartState extends State<DetailedIncomeChart> {
  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: PieChart(
        PieChartData(
          pieTouchData: PieTouchData(
            enabled: true,
            touchCallback: (p0, p1) {
              selectedIndex = p1?.touchedSection?.touchedSectionIndex ?? -1;
              setState(() {});
            },
          ),
          sectionsSpace: 0,
          sections: [
            PieChartSectionData(
                titlePositionPercentageOffset: selectedIndex == 0 ? 1.6 : null,
                title: selectedIndex == 0 ? 'Design service' : '40%',
                titleStyle: AppStyles.styleMedium16.copyWith(
                  color: selectedIndex == 0 ? null : Colors.white,
                ),
                value: 40,
                radius: selectedIndex == 0 ? 50 : 40,
                color: const Color(0xff208CC8)),
            PieChartSectionData(
                titlePositionPercentageOffset: selectedIndex == 1 ? 2.5 : null,
                title: selectedIndex == 1 ? 'Design product' : '25%',
                titleStyle: AppStyles.styleMedium16.copyWith(
                  color: selectedIndex == 1 ? null : Colors.white,
                ),
                value: 25,
                radius: selectedIndex == 1 ? 50 : 40,
                color: const Color(0xff4EB7F2)),
            PieChartSectionData(
                titlePositionPercentageOffset: selectedIndex == 2 ? 1.5 : null,
                title: selectedIndex == 2 ? 'Product royalti' : '20%',
                titleStyle: AppStyles.styleMedium16.copyWith(
                  color: selectedIndex == 2 ? null : Colors.white,
                ),
                value: 20,
                radius: selectedIndex == 2 ? 50 : 40,
                color: const Color(0xff064061)),
            PieChartSectionData(
              titlePositionPercentageOffset: selectedIndex == 3 ? 1.5 : null,
              title: selectedIndex == 3 ? 'Other' : '22%',
              titleStyle: AppStyles.styleMedium16.copyWith(
                color: selectedIndex == 3 ? null : Colors.white,
              ),
              value: 22,
              radius: selectedIndex == 3 ? 50 : 40,
              color: const Color(0xffE2DECD),
            ),
          ],
        ),
      ),
    );
  }
}
