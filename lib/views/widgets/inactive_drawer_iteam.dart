import 'package:adaptive_dash_board/models/drawer_iteam_model.dart';
import 'package:adaptive_dash_board/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

class InActiveDrawerIteam extends StatelessWidget {
  const InActiveDrawerIteam({super.key, required this.drawerIteamModel});
  final DrawerIteamModel drawerIteamModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(drawerIteamModel.image),
      title: Text(
        drawerIteamModel.title,
        style: AppStyles.styleRegular16(context),
      ),
    );
  }
}