import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:juiceproject/Homescreen.dart';

class Welcome extends StatefulWidget {
  const Welcome({super. key});

  @override
  State<Welcome>createState() =>_Welcomepage();

}
class _Welcomepage extends State<Welcome>{

   void initState(){
    super. initState();
     Timer(
      Duration(seconds: 5),
      () => Navigator.pushReplacement(
        context as BuildContext,
        MaterialPageRoute(builder: (context) =>HomeScreen()),
      ),
    );}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 50),
              child: Image.network(
                "https://cdn.dribbble.com/users/479943/screenshots/5735986/media/63ca8fd490142d4bb0c058190b732bb8.gif",
                width: 200, 
              ),
            ),
            SizedBox(height: 20),
            Text.rich(TextSpan(children: [
              TextSpan(
                text: "Welcome",style: TextStyle(
                  fontStyle: FontStyle.italic,fontWeight: FontWeight.bold,
                  fontSize: 30,color: Colors.red
                )
              )
            ])
            
            ),
          ],
        ),
      ),
    );
  }
}

