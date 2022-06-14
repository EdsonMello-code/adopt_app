import 'package:flutter/material.dart';
import 'package:teste_one/app/pages/theme/colors.dart';

class CustomCardAnimal extends StatelessWidget {
  final String label;

  final Widget icon;

  final Function(String currentLabel)? onTap;

  const CustomCardAnimal({
    Key? key,
    required this.label,
    required this.icon,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0),
      child: Column(
        children: [
          InkWell(
            onTap: () {
              onTap?.call(label);
            },
            child: Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(
                    color: Color(0xFFB0C1C1),
                    offset: Offset(0, 10),
                    blurRadius: 10,
                    spreadRadius: -3,
                  )
                ],
                borderRadius: BorderRadius.circular(12.0),
                color: CustomColors.cardColor,
              ),
              child: icon,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: Text(
              label,
              style: const TextStyle(
                color: Color(
                  0xFF8A8A8A,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
