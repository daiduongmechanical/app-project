import 'package:final_project/layout/custom_appbar.dart';
import 'package:final_project/layout/custom_drawer.dart';
import 'package:flutter/material.dart';

class NormalLayout extends StatelessWidget {
  final Widget child;
  final String headText;

  const NormalLayout({super.key, required this.child, required this.headText});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar:   CustomAppbar(
            headText: headText,
          ),
          body: child,
          drawer:  CustomDrawer()
          ),
        ),
      debugShowCheckedModeBanner: false,
      );
  }
}
