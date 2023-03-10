import 'package:flutter/material.dart';
import 'package:splash_screen_and_ogin_page/pages/details_home_page.dart';
import 'package:splash_screen_and_ogin_page/pages/login_page.dart';
import 'package:splash_screen_and_ogin_page/pages/splash_page.dart';

import 'pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: ('Demo'),
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
        initialRoute: '/splash',
        routes: {
          '/splash': (_) => const SplashPage(),
          '/login': (_) => LoginPage(),
          '/home': (_) => const HomePage(),
          '/details': (_) => const DetailsPage(),
        });
  }
}
