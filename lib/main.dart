import 'package:adaptive_dash_board/views/dashboard_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const AdaptiveDashboard());
}

class AdaptiveDashboard extends StatelessWidget {
  const AdaptiveDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DashboardView(),
    );
  }
}
