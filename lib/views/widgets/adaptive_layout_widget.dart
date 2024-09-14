import 'package:flutter/material.dart';

class AdaptiveLayout extends StatelessWidget {
  const AdaptiveLayout({
    super.key,
    required this.mobileLayout,
    required this.tablatLayout,
    required this.desktopLayout,
  });
  final WidgetBuilder mobileLayout;
  final WidgetBuilder tablatLayout;
  final WidgetBuilder desktopLayout;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constrains) {
        if (constrains.maxWidth < 600) {
          return mobileLayout(context);
        } else if (constrains.maxWidth < 900) {
          return tablatLayout(context);
        } else {
          return desktopLayout(context);
        }
      },
    );
  }
}
