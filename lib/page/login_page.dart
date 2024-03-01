import 'package:final_project/component/custom_text_field.dart';
import 'package:final_project/layout/normal_layout.dart';
import 'package:final_project/page/homepage.dart';
import 'package:final_project/shared/shared.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import '../component/custom_filled_button.dart';
import '../layout/no_drawer_layout.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() {
    return _loginPageState();
  }
}

class _loginPageState extends State<LoginPage> {
  bool checked = false;

  @override
  Widget build(BuildContext context) {
    return NoDrawerLayout (
      headText: 'Login',
      child: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 30, 0, 10),
                child: Image.asset("assets/images/logo.png",
                    width: 180, height: 180),
              ),
            ),
           CustomTextField(handle: (data){}),

            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Checkbox(
                        checkColor: Colors.white,
                        value: checked,
                        onChanged: (bool? value) {
                          setState(() {
                            checked = !checked;
                          });
                        },
                      ),
                      Text("Remember"),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: TextButton(
                        style: TextButton.styleFrom(
                          textStyle: const TextStyle(fontSize: 15),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            PageTransition(
                              type: PageTransitionType.rightToLeft,
                              child: HomePage(),
                              ctx: context,
                            ),
                          );


                        },
                        child: const Text(
                          style: TextStyle(color: Colors.red),
                          'Forgot Password',
                        )),
                  )
                ],
              ),
            ),
            CustomFilledButton(text: 'Login', onTap:_handleTap ,)
          ],
        ),
      ),
    );
  }

  _handleTap(){
    print("1");
  }
}
