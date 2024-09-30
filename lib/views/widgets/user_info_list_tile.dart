import 'package:adaptive_dash_board/models/user_info_tile_model.dart';
import 'package:adaptive_dash_board/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:svg_flutter/svg_flutter.dart';

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile(
      {super.key, required this.userInfoListTileModel,
      });
      final UserInfoTileModel userInfoListTileModel;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: const Color(0xffFAFAFA),
      child: ListTile(
        leading: SvgPicture.asset(userInfoListTileModel.image),
        title: Text(
          userInfoListTileModel.title,
          style: AppStyles.styleSemiBold16,
        ),
        subtitle: Text(
          userInfoListTileModel.subtitle,
          style: AppStyles.styleRegular12,
        ),
      ),
    );
  }
}
