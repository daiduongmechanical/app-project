import 'package:flutter/material.dart';
import 'package:final_project/shared/shared.dart';

import '../data_type/drawer_data.dart';

class CustomDrawer extends StatelessWidget {

  static List<DrawerData> drawerItems = [
    DrawerData(name: 'ome', icon: const Icon(Icons.home)),
    DrawerData(name: 'Settings', icon: const Icon(Icons.settings)),
    DrawerData(name: 'Person', icon: const Icon(Icons.person)),
  ];


  static const String url =
      "https://a1cf74336522e87f135f-2f21ace9a6cf0052456644b80fa06d4f.ssl.cf2.rackcdn.com/images/characters/large/800/Barney-Stinson.How-I-Met-Your-Mother.webp";

  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: MediaQuery.of(context).size.width * 0.75,
      child: Column(
        children: [
          SizedBox(
            height: 120,
            width: MediaQuery.of(context).size.width * 0.75,
            child: DrawerHeader(
              decoration: const BoxDecoration(
                color: MainColor,
              ),
              padding: const EdgeInsets.fromLTRB(5, 5, 5, 5),
              child: Container(
                width: 100,
                height: 100,
                alignment: Alignment.centerLeft,
                child: const CircleAvatar(
                  radius: 40,
                  backgroundImage: NetworkImage(url),
                ),
              ),
            ),
          ),
          for( final c in drawerItems )
          ListTile(
            leading: c.icon,
            title:  Text(c.name,style: const TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
            onTap: () {
              Navigator.pop(context);
            },
          ),

          Expanded(
            child: Container(),
          ),
          SizedBox(
            height: 50,
            width: double.infinity,
            child: FilledButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero),
                backgroundColor: MainColor,
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.logout, color: Colors.black),
                  SizedBox(width: 10),
                  // Adjust the spacing between icon and text
                  Text(
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
