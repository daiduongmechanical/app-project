 import 'package:flutter/material.dart';

import '../shared/shared.dart';

class CustomFilledButton extends StatelessWidget{

   CustomFilledButton({required this.text, required this.onTap});
   String text;
   VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return FilledButton(
      style: FilledButton.styleFrom(
        side:BorderSide( color: MainColor,width: 1.5) ,
        foregroundColor: Colors.black,
        backgroundColor: Colors.transparent,
      ),
      onPressed: onTap,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20,5, 20, 5),
        child:  Text(style: TextStyle(fontSize: 20),text),
      ),
    );
  }

}
