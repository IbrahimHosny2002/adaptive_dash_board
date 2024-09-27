import 'package:adaptive_dash_board/models/drawer_iteam_model.dart';
import 'package:adaptive_dash_board/views/widgets/active_drawer_iteam.dart';
import 'package:adaptive_dash_board/views/widgets/inactive_drawer_iteam.dart';
import 'package:flutter/material.dart';

class DrawerIteam extends StatelessWidget {
  const DrawerIteam(
      {super.key, required this.drawerIteamModel, required this.isActive});
  final DrawerIteamModel drawerIteamModel;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveDrawerIteam(drawerIteamModel: drawerIteamModel)
        : InActiveDrawerIteam(drawerIteamModel: drawerIteamModel);
  }
}
