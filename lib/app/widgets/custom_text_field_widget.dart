import 'package:flutter/material.dart';

import '../pages/theme/colors.dart';

class CustomTextFieldWidget extends StatelessWidget {
  final String hint;

  final Widget? leading;
  final Widget? trailing;

  const CustomTextFieldWidget({
    super.key,
    required this.hint,
    this.leading,
    this.trailing,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Theme(
      data: Theme.of(context).copyWith(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: CustomColors.primary,
        ),
      ),
      child: SizedBox(
        width: size.width,
        child: TextFormField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16.0),
              borderSide: const BorderSide(
                color: CustomColors.transparentColor,
              ),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16.0),
              borderSide: const BorderSide(
                color: CustomColors.transparentColor,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16.0),
              borderSide: const BorderSide(
                color: CustomColors.transparentColor,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16.0),
              borderSide: const BorderSide(
                color: CustomColors.transparentColor,
              ),
            ),
            filled: true,
            focusColor: Colors.red,
            fillColor: CustomColors.customWhiteColor,
            hintText: hint,
            prefixIcon: leading,
            suffixIcon: trailing,
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 12.0,
              vertical: 18.0,
            ),
          ),
        ),
      ),
    );
  }
}
