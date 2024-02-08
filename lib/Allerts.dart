import 'package:flutter/material.dart';
import 'package:juiceproject/subscription.dart';

class ALLERTSTab extends StatelessWidget{
  const ALLERTSTab({super.key});
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: ListView(
        children: [
          Padding(padding: 
          EdgeInsets.only(top: 10),
          child: Text('Notification header',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),),

          Padding(padding: EdgeInsets.only(top: 20),
          child: Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a gallery of type and scrambled it to make a type specimen book.'),),


          Padding(padding: EdgeInsets.only(top: 20),
          child: Text('Subscription end Tomarrow',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold)
          ,),),
          Padding(padding: EdgeInsets.only(top: 20),
          child: Text('Welcome to the terms and conditions ("Terms") for our Subscribe & Save subscription ordering program (“Subscribe & Save”). These Terms are between you and Amazon.com Services LLC and/or its affiliates ("Amazon.com", "we" or "us"), and govern your and our respective rights and obligations. The Terms constitute the entire agreement between you and Amazon.com relating to Subscribe & Save. '), 
          ),
          Padding(padding: EdgeInsets.only(top: 10),
          child:ElevatedButton(onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (_) => Subscribe()));
          }, child: Text('Re-Subscribe')),),
         
        ],
      ),
    );
  }
}