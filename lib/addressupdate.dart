import 'package:flutter/material.dart';

class Addupdate extends StatefulWidget{
  const Addupdate({super.key});

  @override
  State<Addupdate> createState() => _AddupdateState();
}

class _AddupdateState extends State<Addupdate> {
    bool switchvalue= false;
  @override


  Widget build (BuildContext context){

    return Scaffold(
     body: Container(
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Text("Address", style: TextStyle(
                  fontSize: 20,fontWeight: FontWeight.bold
                ),),
              ),
         
             
            ],
          ),
          Padding(padding: EdgeInsets.only(right: 270,top: 15),
          child: Text("Address name"),),
          Padding(padding: EdgeInsets.only(right: 320),
          child: Text("Office",style: TextStyle(
            fontWeight: FontWeight.bold
          ),),),
          Padding(padding: EdgeInsets.only(right: 290,top: 20),
          child: Text("First name"),),
          Padding(padding: EdgeInsets.only(right: 320),
          child: Text("Evan",style: TextStyle(fontWeight: FontWeight.bold),),),
            Padding(padding: EdgeInsets.only(right: 290,top: 20),
          child: Text("Last name"),),
          Padding(padding: EdgeInsets.only(right: 310),
          child: Text("Christy",style: TextStyle(fontWeight: FontWeight.bold),),),
         
            Padding(padding: EdgeInsets.only(right: 310,top: 20),
          child: Text("Mobile"),),
          Padding(padding: EdgeInsets.only(right: 260),
          child: Text("+9197123456",style: TextStyle(fontWeight: FontWeight.bold),),),
            Padding(padding: EdgeInsets.only(right: 330,top: 20),
          child: Text("City"),),
          Padding(padding: EdgeInsets.only(right: 320),
          child: Text("Cochi",style: TextStyle(fontWeight: FontWeight.bold),),),
         
            Padding(padding: EdgeInsets.only(right: 260,top: 20),
          child: Text("House/Flat No"),),
          Padding(padding: EdgeInsets.only(right: 305),
          child: Text("7D 159",style: TextStyle(fontWeight: FontWeight.bold),),),
         
            Padding(padding: EdgeInsets.only(right: 220,top: 20),
          child: Text("Residential Complex"),),
          Padding(padding: EdgeInsets.only(right: 300),
          child: Text("Abcdef",style: TextStyle(fontWeight: FontWeight.bold),),),
        
            Padding(padding: EdgeInsets.only(right: 320,top: 20),
          child: Text("Area"),),
          Padding(padding: EdgeInsets.only(right: 300),
          child: Text("Abcdef",style: TextStyle(fontWeight: FontWeight.bold),),),
        
             Padding(padding: EdgeInsets.only(right: 300,top: 20),
          child: Text("PinCode"),),
          Padding(padding: EdgeInsets.only(right: 290),
          child: Text("6912345",style: TextStyle(fontWeight: FontWeight.bold),),),
         
             Padding(padding: EdgeInsets.only(right: 275,top: 20),
          child: Text("Street Name"),),
          Padding(padding: EdgeInsets.only(right: 250),
          child: Text("The bountryline",style: TextStyle(fontWeight: FontWeight.bold),),),
        
         
          Padding(padding: EdgeInsets.only(right: 280,top: 20),
          child: Text("Landmarks"),),
          Padding(padding: EdgeInsets.only(right: 265),
          child: Text("Opposite KFC",style: TextStyle(fontWeight: FontWeight.bold),),),
           
            
            Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Make it Default:${switchvalue ? 'ON' : 'OFF'}'),
                  Switch(
                    value: switchvalue,
                    onChanged: (value) {
                      setState(() {
                        switchvalue = value;
                      });
                    },
                  ),
                ],
             ) ,
         
             ElevatedButton(
               onPressed: () {},
               style: ElevatedButton.styleFrom(
        
                 primary:Colors.pinkAccent,
               ),
               child: Text(
                 "Update",
                 style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
               ),
             )
        ],
      ),
     ),

    );
  }
}