import 'package:flutter/material.dart';

import '../pages/theme/colors.dart';

class CustomAppBarWidget extends StatelessWidget
    implements PreferredSizeWidget {
  final double toolbarHeight;

  const CustomAppBarWidget({
    Key? key,
    this.toolbarHeight = 67.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final viewportPadding = MediaQuery.of(context).viewPadding;
    final size = MediaQuery.of(context).size;

    return FittedBox(
      child: Container(
        width: size.width,
        padding: EdgeInsets.only(
          top: viewportPadding.top + 16,
          left: viewportPadding.left + 16.0,
          right: viewportPadding.right + 16.0,
        ),
        color: CustomColors.customWhiteColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: SizedBox(
                width: 30,
                height: 30,
                child: Material(
                  color: CustomColors.primary,
                  child: IconButton(
                    onPressed: () {
                      Scaffold.of(context).openDrawer();
                    },
                    splashRadius: 30,
                    padding: EdgeInsets.zero,
                    icon: const ImageIcon(
                      AssetImage('assets/icons/menu.png'),
                    ),
                  ),
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Location',
                  style: TextStyle(
                    color: CustomColors.primary,
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Icon(
                      Icons.location_on,
                      color: CustomColors.greenDarkColor,
                      size: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0, top: 8.0),
                      child: RichText(
                        text: const TextSpan(
                          text: 'Kyiv, ',
                          style: TextStyle(
                            color: Color(
                              0xFF646464,
                            ),
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                          ),
                          children: [
                            TextSpan(
                              text: 'Ukraine',
                              style: TextStyle(
                                color: Color(
                                  0xFF646464,
                                ),
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
            const CircleAvatar(
              maxRadius: 20.0,
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(toolbarHeight);
}
