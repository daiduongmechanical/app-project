import 'package:final_project/layout/normal_layout.dart';
import 'package:final_project/page/homepage.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

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
    return NormalLayout(
      headText: 'Login',
      child: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 30, 0, 10),
              child: Image.asset("assets/images/logo.png",
                  width: 180, height: 180),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 30, 30, 10),
            child: TextField(
                decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Enter student code',
            )),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
            child: TextField(
                decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Enter student password',
            )),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 40),
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
        FilledButton(
        style: FilledButton.styleFrom(
          foregroundColor: Colors.red,
        ),
        onPressed: () {},
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20,5, 20, 5),
          child: const Text(style: TextStyle(fontSize: 20),'Login'),
        ),
        )
        ],
      ),
    );
  }
}
