import 'package:adaptive_dash_board/views/widgets/adaptive_layout_widget.dart';
import 'package:adaptive_dash_board/views/widgets/custom_drawer.dart';
import 'package:adaptive_dash_board/views/widgets/dashboard_desktop_layout.dart';
import 'package:adaptive_dash_board/views/widgets/dashboard_mobile_layout.dart';
import 'package:adaptive_dash_board/views/widgets/dashboard_tablet_layout.dart';
import 'package:flutter/material.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer:
          MediaQuery.of(context).size.width < 800 ? const CustomDrawer() : null,
      appBar: MediaQuery.of(context).size.width < 800
          ? AppBar(
              elevation: 0,
              backgroundColor: const Color(0xff4EB7F2),
              leading: IconButton(
                onPressed: () {
                  scaffoldKey.currentState!.openDrawer();
                },
                icon: const Icon(Icons.menu),
              ),
            )
          : null,
      backgroundColor: const Color(0xFFF7F9FA),
      body: AdaptiveLayout(
        mobileLayout: (context) => const DashboardMobileLayout(),
        tablatLayout: (context) => const DashboardTabletLayout(),
        desktopLayout: (context) => const DashboardDesktopLayout(),
      ),
    );
  }
}
