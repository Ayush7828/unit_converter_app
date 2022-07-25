import 'package:flutter/material.dart';
import 'package:unit_app/pages/routes.dart';
import 'package:unit_app/pages/unit_screen.dart';

import 'pages/spalsh_screen.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: const SplashScreen(),
      routes: {MyRoutes.unit: (context) => const UnitScreen()},
    );
  }
}
