import 'package:flutter/material.dart';

import '../../pages/theme/colors.dart';

class CustomCardAnimalWidget extends StatelessWidget {
  const CustomCardAnimalWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return FittedBox(
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).pushNamed('/details/');
        },
        child: SizedBox(
          height: 260,
          width: size.width,
          child: Row(
            children: [
              Expanded(
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 24.0,
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color(0xFFCCD6D9),
                          borderRadius: BorderRadius.circular(16.0),
                          boxShadow: const [
                            BoxShadow(
                              color: Color(0xFFD3D3D3),
                              blurRadius: 5,
                              spreadRadius: 0.01,
                              offset: Offset(
                                0,
                                2,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Image.asset(
                        'assets/images/gato.png',
                        scale: 0.90,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.symmetric(vertical: 48),
                  decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xFFD3D3D3),
                        blurRadius: 5,
                        spreadRadius: 0.01,
                        offset: Offset(
                          0,
                          4,
                        ),
                      ),
                    ],
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(16.0),
                      bottomRight: Radius.circular(16.0),
                    ),
                    color: CustomColors.customWhiteColor,
                  ),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 16.0,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Sola',
                              style: TextStyle(
                                fontSize: 24,
                                color: CustomColors.customCardAnimalColor,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Icon(
                              Icons.female,
                              size: 32,
                              color: Colors.grey,
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 8.0),
                          child: Text(
                            'Absyssinion cat',
                            style: TextStyle(
                              fontSize: 14,
                              color: CustomColors.customCardAnimalColor,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 16.0),
                          child: Text(
                            '1.5 years old',
                            style: TextStyle(
                              color:
                                  CustomColors.customCardAnimalSecondaryColor,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 16.0),
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(right: 8.0),
                                child: Icon(
                                  Icons.location_on,
                                  color: CustomColors.greenDarkColor,
                                  size: 18,
                                ),
                              ),
                              Text(
                                'Distance: 7:8km',
                                style: TextStyle(
                                  color: CustomColors
                                      .customCardAnimalSecondaryColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
