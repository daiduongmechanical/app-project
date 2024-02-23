import 'package:final_project/layout/custom_appbar.dart';
import 'package:final_project/layout/custom_drawer.dart';
import 'package:flutter/material.dart';
GlobalKey<ScaffoldState> scaffloldKey= GlobalKey<ScaffoldState>();
MaterialApp NormalLayout(context,
    {required Widget child, required String headText}) {
  return MaterialApp(
    home: SafeArea(
      child: Scaffold(
        key: scaffloldKey,
        appBar: header(context, text: headText, scaffoldKey: scaffloldKey),
        body: child,
        drawer: CustomDrawer(),
      ),
    ),
    debugShowCheckedModeBanner: false,
  );
}
