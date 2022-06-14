import 'package:flutter/material.dart';

import '../widgets/custom_navigation_image_bottom_widget.dart';
import 'theme/colors.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    final orientation = MediaQuery.of(context).orientation;

    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      appBar: AppBar(
        leading: const BackButton(),
        elevation: 0,
        backgroundColor: CustomColors.transparentColor,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16.0),
            child: Icon(
              Icons.download_for_offline_outlined,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: ColoredBox(
          color: CustomColors.customWhiteColor,
          child: Column(
            children: [
              SizedBox(
                height: orientation == Orientation.portrait
                    ? size.height * 0.6
                    : size.width * 0.6,
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        height: orientation == Orientation.portrait
                            ? size.height * 0.5
                            : size.width * 0.5,
                        color: const Color(0xFFC6D0D3),
                        width: size.width,
                        child: Align(
                          alignment: Alignment.topCenter,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 56.0),
                            child: Column(
                              children: [
                                Image.asset(
                                  'assets/images/gato.png',
                                  filterQuality: FilterQuality.high,
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(top: 8.0),
                                  child: CustomNavigationImageBottomWidget(),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 32.0,
                          vertical: 16.0,
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              16.0,
                            ),
                            color: CustomColors.customWhiteColor,
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.grey,
                                offset: Offset(0, 1),
                                blurRadius: 2,
                                spreadRadius: 0,
                              )
                            ],
                          ),
                          height: orientation == Orientation.portrait
                              ? size.height * 0.2
                              : size.height * 0.3,
                          width: size.width,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                color: CustomColors.customWhiteColor,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 32.0,
                    vertical: 32.0,
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 16.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(
                                    bottom: 8.0,
                                    right: 16.0,
                                  ),
                                  child: CircleAvatar(
                                    maxRadius: 20.0,
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      'Abyssinion cat',
                                      style: TextStyle(
                                        fontSize: 16.0,
                                      ),
                                    ),
                                    Text(
                                      'Owner',
                                      style: TextStyle(
                                        color: Color(0xFFC6C6C6),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                            const Text(
                              'May 25, 2019',
                              style: TextStyle(
                                color: Color(0xFFC6C6C6),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Text(
                        '''Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.''',
                        style: TextStyle(
                          color: Color(
                            0xFFB4B4B4,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 110.0,
                width: size.width,
                decoration: const BoxDecoration(
                  color: Color(0xFFF3F4F4),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(32.0),
                    topRight: Radius.circular(32.0),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Container(
                        width: 100,
                        height: 50,
                        decoration: BoxDecoration(
                          color: const Color(0xFF306060),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: const Icon(
                          Icons.favorite,
                          color: Color(0xFFC6D0D3),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        width: 200,
                        height: 50,
                        decoration: BoxDecoration(
                          color: const Color(0xFF306060),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: const Center(
                          child: Text(
                            'Adoption',
                            style: TextStyle(
                              color: Color(0xFFC6D0D3),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
