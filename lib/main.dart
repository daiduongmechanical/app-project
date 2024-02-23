import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import 'page/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:  SafeArea(
        child: Scaffold(
          body: HomePage(),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
