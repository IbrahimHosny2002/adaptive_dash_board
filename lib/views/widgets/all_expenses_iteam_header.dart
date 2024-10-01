import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

class AllExpensesIteamHeader extends StatelessWidget {
  const AllExpensesIteamHeader(
      {super.key,
      required this.image,
      required this.imageColor,
      required this.iconColor});
  final String image;
  final Color imageColor, iconColor;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundColor: imageColor == Colors.white
              ? Colors.white.withOpacity(0.1)
              : const Color(0xffFAFAFA),
          child: Center(
            child: SvgPicture.asset(
              image,
              colorFilter: ColorFilter.mode(imageColor, BlendMode.srcIn),
            ),
          ),
        ),
        const Spacer(),
        Transform.rotate(
          angle: -1.57079633 * 4,
          child: Icon(
            size: 15,
            Icons.arrow_forward_ios_outlined,
            color: iconColor,
          ),
        ),
      ],
    );
  }
}
