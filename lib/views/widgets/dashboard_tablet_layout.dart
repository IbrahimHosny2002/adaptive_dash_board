import 'package:adaptive_dash_board/views/widgets/custom_drawer.dart';
import 'package:adaptive_dash_board/views/widgets/dashboard_mobile_layout.dart';
import 'package:flutter/material.dart';

class DashboardTabletLayout extends StatelessWidget {
  const DashboardTabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          flex: 1,
          child: CustomDrawer(),
        ),
        SizedBox(
          width: 32,
        ),
        Expanded(
          flex: 3,
          child: Padding(
            padding: EdgeInsets.only(
              top: 40,
            ),
            child: DashboardMobileLayout(),
          ),
        ),
        SizedBox(
          width: 32,
        ),
      ],
    );
  }
}
