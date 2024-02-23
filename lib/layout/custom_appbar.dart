import 'package:final_project/shared/shared.dart';
import 'package:flutter/material.dart';

AppBar header(BuildContext context,
    {required String text,
      required GlobalKey<ScaffoldState> scaffoldKey}) {
  return AppBar(
    backgroundColor: MainColor,
    title: Text(
      text,
      style: const TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
    ),
    centerTitle: true,
    leading: IconButton(
      icon: const Icon(
        Icons.arrow_back_ios_outlined,
        size: 26,
        color: Colors.black,
      ),
      onPressed: () {
        if (Navigator.of(context).canPop()) {
          Navigator.of(context).pop(false);
        }
      },
    ),
    actions: [
      IconButton(
        icon: const Icon(
          Icons.menu,
          size: 26,
          color: Colors.black,
        ),
        onPressed: () {
          scaffoldKey.currentState?.openDrawer();
        },
      ),
    ],
  );
}
