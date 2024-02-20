import 'package:flutter/material.dart';

class NoHeaderLayout extends StatelessWidget{
   final Widget child;

  const NoHeaderLayout({super.key, required this.child});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Center(child: child),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}