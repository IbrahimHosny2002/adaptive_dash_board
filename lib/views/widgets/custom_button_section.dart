import 'package:adaptive_dash_board/views/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class CustomButtonSection extends StatelessWidget {
  const CustomButtonSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: CustomButton(
            buttonText: 'Add more details',
            backgroundColor: Colors.white,
            textColor: Color(0xff4EB7F2),
          ),
        ),
        SizedBox(
          width: 24,
        ),
        Expanded(
          child: CustomButton(
            buttonText: 'Send Money',
            backgroundColor: Color(0xff4EB7F2),
            textColor: Colors.white,
          ),
        ),
      ],
    );
  }
}
