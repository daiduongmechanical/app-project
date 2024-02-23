import 'package:flutter/material.dart';
import 'package:final_project/shared/shared.dart';
import 'package:page_transition/page_transition.dart';

import '../data_type/drawer_data.dart';
import '../page/homepage.dart';
import '../page/test_page.dart';

class CustomDrawer extends StatelessWidget {
  static List<DrawerData> drawerItems = [
    DrawerData(name: 'Home', icon: const Icon(Icons.home), page: HomePage()),
    DrawerData(name: 'Settings', icon: const Icon(Icons.settings), page: TestPage()),
  ];
  static const String url =
      "https://a1cf74336522e87f135f-2f21ace9a6cf0052456644b80fa06d4f.ssl.cf2.rackcdn.com/images/characters/large/800/Barney-Stinson.How-I-Met-Your-Mother.webp";

  const CustomDrawer({Key? key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: MediaQuery.of(context).size.width * 0.75,
      child: Column(
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(
              color: MainColor,
            ),
            padding: const EdgeInsets.all(5),
            child: Container(
              alignment: Alignment.centerLeft,
              child: CircleAvatar(
                radius: 40,
                backgroundImage: NetworkImage(url),
              ),
            ),
          ),
          for (final c in drawerItems)
            ListTile(
              leading: c.icon,
              title: Text(
                c.name,
                style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              onTap: () {
                Scaffold.of(context).closeDrawer();
                Navigator.push(
                  context,
                  PageTransition(
                    type: PageTransitionType.rightToLeft,
                    child: c.page,
                    ctx: context,
                  ),
                );
              },
            ),
          Expanded(
            child: Container(),
          ),
          SizedBox(
            height: 50,
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero,
                ), backgroundColor: MainColor,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.logout, color: Colors.black),
                  const SizedBox(width: 10),
                  const Text(
                    'Log out',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
