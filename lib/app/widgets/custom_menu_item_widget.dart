import 'package:flutter/material.dart';

class CustomMenuItemWidget extends StatelessWidget {
  final IconData icon;
  final bool isEnabled;

  final String label;

  const CustomMenuItemWidget({
    super.key,
    required this.icon,
    required this.label,
    this.isEnabled = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 16.0,
        bottom: 32.0,
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              right: 16.0,
            ),
            child: Icon(
              icon,
              color: isEnabled
                  ? const Color(
                      0xFFEAF4F4,
                    )
                  : const Color(0xFF7AA7A7),
            ),
          ),
          Text(
            label,
            style: TextStyle(
              color: isEnabled
                  ? const Color(
                      0xFFEAF4F4,
                    )
                  : const Color(0xFF7AA7A7),
            ),
          ),
        ],
      ),
    );
  }
}
