import 'package:final_project/layout/custom_appbar.dart';
import 'package:final_project/layout/custom_drawer.dart';
import 'package:flutter/material.dart';
GlobalKey<ScaffoldState> scaffloldKey= GlobalKey<ScaffoldState>();
MaterialApp NoHeadLayout(context,
    {required Widget child}) {
  return MaterialApp(
    home: SafeArea(
      child: Scaffold(
        key: scaffloldKey,
        appBar:null,
        body: child,
        drawer: CustomDrawer(),
      ),
    ),
    debugShowCheckedModeBanner: false,
  );
}
