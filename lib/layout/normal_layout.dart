import 'package:final_project/layout/custom_appbar.dart';
import 'package:final_project/layout/custom_drawer.dart';
import 'package:flutter/material.dart';

class NormalLayout extends StatelessWidget {
  final String headText;
  final Widget child;
final GlobalKey<ScaffoldState> scaffloldKey= GlobalKey<ScaffoldState>();
   NormalLayout({
    Key? key,
    required this.headText,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key:scaffloldKey ,
      appBar: header(context, text: headText, scaffoldKey: scaffloldKey),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
        child: child,
      ),
      endDrawer: CustomDrawer(),
    );
  }
}
