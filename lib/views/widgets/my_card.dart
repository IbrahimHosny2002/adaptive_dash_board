import 'package:adaptive_dash_board/utils/app_images.dart';
import 'package:adaptive_dash_board/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        padding: const EdgeInsets.only(
          left: 24,
          top: 16,
          right: 32,
        ),
        decoration: ShapeDecoration(
          color: const Color(0xff4EB7F2),
          image: const DecorationImage(
              image: AssetImage(
            Assets.imagesCardBackground,
          )),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(
                'Name card',
                style: AppStyles.styleRegular16.copyWith(
                  color: Colors.white
                ),
                
              ),
              subtitle: const Text(
                'Syah Bandi',
                style: AppStyles.styleMedium20,
              ),
              trailing: SvgPicture.asset(Assets.imagesGallery),
            ),
            const Expanded(child: SizedBox(),),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  '0918 8124 0042 8129',
                  style: AppStyles.styleSemiBold24.copyWith(
                    color: Colors.white
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  '12/20 - 124',
                  style: AppStyles.styleRegular16.copyWith(
                    color: Colors.white
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
