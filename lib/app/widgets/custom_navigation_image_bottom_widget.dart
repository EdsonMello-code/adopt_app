import 'package:flutter/material.dart';

class CustomNavigationImageBottomWidget extends StatelessWidget {
  const CustomNavigationImageBottomWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 2.0),
          child: Container(
            width: 10,
            decoration: BoxDecoration(
              color: const Color(0xFF2C5D5D),
              borderRadius: BorderRadius.circular(
                16.0,
              ),
            ),
            height: 4,
          ),
        ),
        Container(
          width: 5,
          decoration: BoxDecoration(
            color: const Color(0xFFFCFCFC),
            borderRadius: BorderRadius.circular(
              16.0,
            ),
          ),
          height: 4,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 2.0),
          child: Container(
            width: 5,
            decoration: BoxDecoration(
              color: const Color(0xFFFCFCFC),
              borderRadius: BorderRadius.circular(
                16.0,
              ),
            ),
            height: 4,
          ),
        ),
      ],
    );
  }
}
