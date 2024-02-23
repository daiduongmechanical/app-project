import 'package:final_project/layout/normal_layout.dart';
import 'package:final_project/page/homepage.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class TestPage extends StatelessWidget {
  const TestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
            body: Center(
              child: Column(
                children: [
                  FilledButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        PageTransition(
                          type: PageTransitionType.rightToLeft,
                          child:  HomePage(),
                          ctx: context,
                        ),
                      );
                    },
                    child: Text('to Test page'),
                  ),
                  FilledButton(
                    onPressed: () {
                      if (Navigator.of(context).canPop()) {
                        Navigator.of(context).pop(false);
                      }
                    },
                    child: Text('back to previous page'),
                  ),
                ],
              ),
            )),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
