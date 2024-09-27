import 'package:adaptive_dash_board/models/drawer_iteam_model.dart';
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
      color: Colors.white,
      child: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: UserInfoListTile(
              title: 'Lekan Okeowo',
              subTitle: 'demo@gmail.com',
              image: Assets.imagesAvatar3,
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
                  child: SizedBox(),
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
