import 'package:flutter/material.dart';
import 'package:teste_one/app/pages/theme/colors.dart';

import '../pages/details_page.dart';
import '../pages/home_page.dart';
import 'custom_menu_item_widget.dart';

class CustomDrawerWidget extends StatelessWidget {
  const CustomDrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final viewportPadding = MediaQuery.of(context).viewPadding;
    return ClipRect(
      child: Stack(
        children: [
          Container(
            width: size.width,
            height: size.height,
            color: CustomColors.customDrawerColor,
            child: Padding(
              padding: EdgeInsets.only(
                top: viewportPadding.top + 16.0,
                left: viewportPadding.left + 16.0,
                right: viewportPadding.right + 16.0,
                bottom: viewportPadding.bottom + 16.0,
              ),
              child: SingleChildScrollView(
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    minHeight: MediaQuery.of(context).size.height -
                        (viewportPadding.top + 32.0 + viewportPadding.bottom),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 16.0),
                        child: Row(
                          children: [
                            const CircleAvatar(
                              maxRadius: 20.0,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 16.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    'Kendali Jenner',
                                    style: TextStyle(
                                      color: CustomColors.inativeTextColor,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Text(
                                    'Active status',
                                    style: TextStyle(
                                      color:
                                          CustomColors.customDrawerStatusColor,
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 16.0),
                        child: Column(
                          children: const [
                            CustomMenuItemWidget(
                              icon: Icons.pets,
                              label: 'Adoptoin',
                              isEnabled: true,
                            ),
                            CustomMenuItemWidget(
                              icon: Icons.pets,
                              label: 'Adoptoin',
                            ),
                            CustomMenuItemWidget(
                              icon: Icons.pets,
                              label: 'Adoptoin',
                            ),
                            CustomMenuItemWidget(
                              icon: Icons.pets,
                              label: 'Adoptoin',
                            ),
                            CustomMenuItemWidget(
                              icon: Icons.pets,
                              label: 'Adoptoin',
                            ),
                            CustomMenuItemWidget(
                              icon: Icons.pets,
                              label: 'Adoptoin',
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Row(
                            children: const [
                              Padding(
                                padding: EdgeInsets.only(right: 16.0),
                                child: Icon(
                                  Icons.settings,
                                  color: Color(0xFF7AA7A7),
                                ),
                              ),
                              Text(
                                'Settings',
                                style: TextStyle(
                                  color: Color(0xFF7AA7A7),
                                ),
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16.0,
                            ),
                            child: Container(
                              height: 16,
                              width: 1,
                              color: const Color(0xFF7AA7A7),
                            ),
                          ),
                          const Text(
                            'Log out',
                            style: TextStyle(
                              color: Color(0xFF7AA7A7),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 0,
            bottom: 0,
            child: Center(
              child: Transform.translate(
                offset: const Offset(200, 0),
                child: SizedBox(
                  height: size.height * 0.8,
                  width: size.width,
                  child: Stack(
                    alignment: Alignment.topLeft,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 16.0,
                          top: 32.0,
                          bottom: 32.0,
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(16.0),
                          child: const DetailsPage(),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 48.0,
                        ),
                        child: ClipRRect(
                          child: const HomePage(),
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                      ),
                      Container(
                        color: CustomColors.transparentColor,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
