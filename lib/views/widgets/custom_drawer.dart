import 'package:adaptive_dash_board/models/drawer_iteam_model.dart';
import 'package:adaptive_dash_board/models/user_info_tile_model.dart';
import 'package:adaptive_dash_board/utils/app_images.dart';
import 'package:adaptive_dash_board/views/widgets/custom_drawer_list_view.dart';
import 'package:adaptive_dash_board/views/widgets/inactive_drawer_iteam.dart';
import 'package:adaptive_dash_board/views/widgets/user_info_list_tile.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * 0.7,
      color: Colors.white,
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserInfoListTile(
              userInfoListTileModel: UserInfoTileModel(
                image: Assets.imagesAvatar3,
                title: 'Lekan Okeowo',
                subtitle: 'demo@gmail.com',
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 25,
            ),
          ),
          const CustomDrawerListView(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                const Expanded(
                  child: SizedBox(
                    height: 32,
                  ),
                ),
                InActiveDrawerIteam(
                  drawerIteamModel: DrawerIteamModel(
                    image: Assets.imagesSettings,
                    title: 'Setting system',
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                InActiveDrawerIteam(
                  drawerIteamModel: DrawerIteamModel(
                    image: Assets.imagesLogout,
                    title: 'Logout account',
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
