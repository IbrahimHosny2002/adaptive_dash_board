import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class IncomeChart extends StatefulWidget {
  const IncomeChart({super.key});

  @override
  State<IncomeChart> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<IncomeChart> {
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
                value: 40,
                radius: selectedIndex == 0 ? 40 : 30,
                showTitle: false,
                color: const Color(0xff208CC8)),
            PieChartSectionData(
                value: 25,
                radius: selectedIndex == 1 ? 40 : 30,
                showTitle: false,
                color: const Color(0xff4EB7F2)),
            PieChartSectionData(
                value: 20,
                radius: selectedIndex == 2 ? 40 : 30,
                showTitle: false,
                color: const Color(0xff064061)),
            PieChartSectionData(
              value: 22,
              radius: selectedIndex == 3 ? 40 : 30,
              showTitle: false,
              color: const Color(0xffE2DECD),
            ),
          ],
        ),
      ),
    );
  }
}
