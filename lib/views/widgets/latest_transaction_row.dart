import 'package:adaptive_dash_board/models/user_info_tile_model.dart';
import 'package:adaptive_dash_board/utils/app_images.dart';
import 'package:adaptive_dash_board/views/widgets/user_info_list_tile.dart';
import 'package:flutter/material.dart';

class LatestTransactionRow extends StatefulWidget {
  const LatestTransactionRow({super.key});

  @override
  State<LatestTransactionRow> createState() => _LatestTransactionRowState();
}

class _LatestTransactionRowState extends State<LatestTransactionRow> {
  List<UserInfoTileModel> items = [
    UserInfoTileModel(
      image: Assets.imagesAvatar1,
      title: 'Madrani Andi',
      subtitle: 'Madraniadi20@gmail',
    ),
    UserInfoTileModel(
      image: Assets.imagesAvatar2,
      title: 'Josua Nunito',
      subtitle: 'Josh Nunito@gmail.com',
    ),
    UserInfoTileModel(
      image: Assets.imagesAvatar3,
      title: 'Madrani Andi',
      subtitle: 'Madraniadi20@gmail',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: items.map((e) {
          return Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IntrinsicWidth(
              child: UserInfoListTile(userInfoListTileModel: e),
            ),
          );
        }).toList(),
      ),
    );
  }
}
