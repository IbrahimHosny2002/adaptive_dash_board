import 'package:adaptive_dash_board/models/drawer_iteam_model.dart';
import 'package:adaptive_dash_board/utils/app_images.dart';
import 'package:adaptive_dash_board/views/widgets/drawer_iteam.dart';
import 'package:flutter/material.dart';

class CustomDrawerListView extends StatefulWidget {
  const CustomDrawerListView({super.key});

  @override
  State<CustomDrawerListView> createState() => _CustomDrawerListViewState();
}

class _CustomDrawerListViewState extends State<CustomDrawerListView> {
  int selctedIteam = 0;
  List<DrawerIteamModel> drawerList = [
    DrawerIteamModel(
      title: 'Dashboard',
      image: Assets.imagesDashboard,
    ),
    DrawerIteamModel(
      title: 'My Transaction',
      image: Assets.imagesMyTransctions,
    ),
    DrawerIteamModel(
      title: 'Statistics',
      image: Assets.imagesStatistics,
    ),
    DrawerIteamModel(
      title: 'Wallet Account',
      image: Assets.imagesWalletAccount,
    ),
    DrawerIteamModel(
      title: 'My Investments',
      image: Assets.imagesMyInvestments,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
        itemCount: drawerList.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              if (selctedIteam != index) {
                setState(
                  () {
                    selctedIteam = index;
                  },
                );
              }
            },
            child: Padding(
              padding: const EdgeInsets.only(
                top: 25,
              ),
              child: DrawerIteam(
                isActive: selctedIteam == index,
                drawerIteamModel: drawerList[index],
              ),
            ),
          );
        });
  }
}
