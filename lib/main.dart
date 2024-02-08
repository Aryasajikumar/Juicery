import 'dart:async';


import 'package:flutter/material.dart';
import 'package:juiceproject/Homescreen.dart';

import 'package:juiceproject/login.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main(List<String> args)async {
   WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs =await SharedPreferences.getInstance();
  var email=prefs.getString("email");
  print(email);
  runApp(MyApp(email: email,));
}
class MyApp extends StatelessWidget{
  var email;
  MyApp ({required this.email});
  @override
   Widget build (BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.transparent),
      title: 
      'Jucery',
      home: Homepage(email: email,),
      debugShowCheckedModeBanner: false,
    );
   }
}
class Homepage extends StatefulWidget{
  var email;
 Homepage ({required this.email});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage>{
  void initState(){
    super. initState();
     Timer(
      Duration(seconds: 5),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => widget.email==null?Login():HomeScreen(),),
      ),
    );
  }
  @override
  Widget build (BuildContext context) {
    return Scaffold(
      
      backgroundColor: Color.fromARGB(255, 255, 77, 0),
     
      body: Container(
         child: Column(
          children: [

            Padding(padding: EdgeInsets.only(top: 200),
            child:Text("Juice",style: TextStyle(
              fontFamily: "AbrilFatface",fontSize: 130,color: Colors.white
            ),) ,),
       Padding(padding: EdgeInsets.only(top: 100,left: 30),
       
       
       child: Text('WE MAKE HEALTHY TASTE GOOD',style: TextStyle(
        fontSize: 40,fontWeight: FontWeight.bold, color: Colors.white
       ),),)
       
       
    

       
       
               
      ]),  )
    );
  }
}