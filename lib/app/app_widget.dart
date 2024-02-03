import 'package:flutter/material.dart';
import 'package:teste_one/app/pages/home_page.dart';

import 'pages/details_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/home/',
      routes: {
        '/home/': (context) => const HomePage(),
        '/details/': (context) => const DetailsPage(),
      },
    );
  }
}
