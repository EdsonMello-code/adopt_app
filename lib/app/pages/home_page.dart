import 'package:flutter/material.dart';
import 'package:teste_one/app/widgets/custom_text_field_widget.dart';

import '../widgets/custom_app_bar_widget.dart';
import '../widgets/custom_card_animal/custom_card_animal_type_widget.dart';
import '../widgets/custom_card_animal/custom_card_animal_widget.dart';
import '../widgets/custom_drawer_widget.dart';
import 'theme/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: CustomColors.customWhiteColor,
      appBar: const CustomAppBarWidget(),
      drawer: const CustomDrawerWidget(),
      body: Padding(
        padding: const EdgeInsets.only(top: 16.0),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(
              37,
            ),
            topRight: Radius.circular(
              37,
            ),
          ),
          child: Stack(
            fit: StackFit.expand,
            children: [
              Container(
                color: const Color(
                  0xFFF6F6F6,
                ),
              ),
              SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.only(
                    left: mediaQuery.viewPadding.left + 16,
                    right: mediaQuery.viewPadding.right + 16,
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 40.0,
                          bottom: 32,
                        ),
                        child: FittedBox(
                          child: CustomTextFieldWidget(
                            hint: 'Search pet to adopt',
                            trailing: GestureDetector(
                              child: const Icon(Icons.filter_alt_sharp),
                              onTap: () {},
                            ),
                            leading: GestureDetector(
                              child: const Icon(Icons.search),
                              onTap: () {},
                            ),
                          ),
                        ),
                      ),
                      FittedBox(
                        child: SizedBox(
                          width: size.width,
                          height: 100,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: List.generate(
                              10,
                              (index) => CustomCardAnimal(
                                label: 'Cats $index',
                                icon: const Icon(
                                  Icons.fiber_manual_record_sharp,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 16.0),
                        child: CustomCardAnimalWidget(),
                      ),
                      const CustomCardAnimalWidget(),
                      const CustomCardAnimalWidget(),
                      const CustomCardAnimalWidget(),
                      const CustomCardAnimalWidget(),
                      const CustomCardAnimalWidget(),
                      const CustomCardAnimalWidget(),
                    ],
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


//  Expanded(
//             child: Padding(
//               padding: const EdgeInsets.only(top: 24.0),
//               child: ClipRRect(
//                 borderRadius: const BorderRadius.only(
//                   topLeft: Radius.circular(
//                     37,
//                   ),
//                   topRight: Radius.circular(
//                     37,
//                   ),
//                 ),
//                 child: Container(
//                   color: const Color(
//                     0xFFF6F6F6,
//                   ),
//                   padding: EdgeInsets.only(
//                     left: mediaQuery.viewPadding.left + 16,
//                   ),
//                 ),
//               ),
//             ),
//           ),