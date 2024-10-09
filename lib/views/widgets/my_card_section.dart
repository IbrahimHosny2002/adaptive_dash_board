import 'package:adaptive_dash_board/utils/app_styles.dart';
import 'package:adaptive_dash_board/views/widgets/dot_indicator.dart';
import 'package:adaptive_dash_board/views/widgets/my_card_page_view.dart';
import 'package:flutter/material.dart';

class MyCardSection extends StatefulWidget {
  const MyCardSection({super.key});

  @override
  State<MyCardSection> createState() => _MyCardSectionState();
}

class _MyCardSectionState extends State<MyCardSection> {
  late PageController pageController;
  int currentPageIndex = 0;
  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(
      () {
        currentPageIndex = pageController.page!.round();
        setState(() {});
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'My card',
          style: AppStyles.styleSemiBold20(context)
              .copyWith(color: const Color(0xff064061)),
        ),
        const SizedBox(
          height: 24,
        ),
        MyCardPageView(
          pageController: pageController,
        ),
        const SizedBox(
          height: 16,
        ),
        DotIndicator(
          currentPageIndex: currentPageIndex,
        ),
      ],
    );
  }
}
