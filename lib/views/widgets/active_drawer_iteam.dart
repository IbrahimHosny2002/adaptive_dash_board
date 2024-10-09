import 'package:adaptive_dash_board/models/drawer_iteam_model.dart';
import 'package:adaptive_dash_board/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

class ActiveDrawerIteam extends StatelessWidget {
  const ActiveDrawerIteam({super.key, required this.drawerIteamModel});
  final DrawerIteamModel drawerIteamModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(drawerIteamModel.image),
      title: FittedBox(
        fit: BoxFit.scaleDown,
        alignment: Alignment.centerLeft,
        child: Text(
          drawerIteamModel.title,
          style: AppStyles.styleBold16(context),
        ),
      ),
      trailing: Container(
        color: const Color(0xff4EB7F2),
        width: 3.27,
      ),
    );
  }
}
