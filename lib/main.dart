
import 'package:final_project/layout/no_header_layout.dart';
import 'package:final_project/layout/normal_layout.dart';
import 'package:flutter/material.dart';

import 'component/test_file.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
/*return NoHeaderLayout(child: Text('data'));*/
    return  const NormalLayout(headText: 'Home Page',
    child: Center(child: Text('name')),);
  }
}
