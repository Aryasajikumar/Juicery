import 'package:flutter/material.dart';
import 'package:juiceproject/Logout.dart';

import 'package:juiceproject/Notification.dart';
import 'package:juiceproject/Payment.dart';

import 'package:juiceproject/addressupdate.dart';
import 'package:juiceproject/cart.dart';

import 'package:juiceproject/wallet.dart';

class Profile extends StatefulWidget{
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  int counter=0;
  bool switchvalue = false;
@override
  Widget build(BuildContext context){

    var list =[];
     return DefaultTabController(
      length: 3,
      child: Scaffold(
         drawer: Drawer(
          //child: CircleAvatar(
            //backgroundImage: NetworkImage("
        //radius: 10,  ),
        child: ListView(children: [
       
           
   
            
          ListTile(
            leading:Icon( Icons.shopping_bag_rounded, ),
            title: Text('Shop'),
            onTap: () {},

    ),
    ListTile(
      leading: Icon( Icons.shopping_basket_rounded, ),
      title: Text('Payment'),
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (_)=> Payment()));
      },
    ),
    ListTile(
      leading: Icon(Icons.wallet_rounded),
      title: Text("My Wallet"),
      onTap: () {
         Navigator.push(context, MaterialPageRoute(builder: (_)=> Walletpage()));
      },
    ),
    
    ListTile(
      leading: Icon(Icons.subscriptions_rounded),
      title: Text("My Subscription"),
    ),
    ListTile(
      leading: Icon(Icons.notifications),
    title: Text("Notification"),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (_)=>NotificationPage()));
          },
    ),
    ListTile(
      leading: Icon(Icons.message_rounded),
      title: Text("FAQ's"),
      
    ),
    ListTile(
      leading:Icon(Icons.logout_rounded) ,
      title: Text("Logout"),
      onTap:() {
        Navigator.push(context,
        MaterialPageRoute(builder: (_)=> Logoutpage()));
      } ,
    )
           
        ],),
      
         ),
          
        
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 236, 117, 20),
          
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: InkWell(
                child: Icon(Icons.calendar_month_outlined),
                onTap: () {},
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5,right: 10),
              child: Stack(
                children: [
                  IconButton(
                    icon: Icon(Icons.notifications),
                    onPressed: () {
                      setState(() {
                        counter = 0;
                      });
                    },
                  ),
                  counter != 0
                      ? Positioned(
                          right: 11,
                          top: 11,
                          child: Container(
                            padding: EdgeInsets.all(2),
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(6),
                            ),
                            constraints: BoxConstraints(
                              minWidth: 14,
                              minHeight: 14,
                            ),
                            child: Text(
                              '$counter',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 8,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        )
                      : Container()
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:5,right: 10),
              child: new Container(
                height: 150.0,
                width: 30.0,
                child: new GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      new MaterialPageRoute(
                        builder: (BuildContext context) =>
                            new CartItemsScreen(),
                      ),
                    );
                  },
                  child: new Stack(
                    children: <Widget>[
                      new IconButton(
                        icon: new Icon(
                          Icons.shopping_cart,
                          color: Colors.white,
                        ),
                        onPressed: null,
                      ),
                      list.length == 0
                          ? new Container()
                          : new Positioned(
                              child: new Stack(
                                children: <Widget>[
                                  new Icon(
                                    Icons.brightness_1,
                                    size: 20.0,
                                    color: Colors.green[800],
                                  ),
                                  new Positioned(
                                    top: 3.0,
                                    right: 4.0,
                                    child: new Center(
                                      child: new Text(
                                        list.length.toString(),
                                        style: new TextStyle(
                                          color: Colors.white,
                                          fontSize: 11.0,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                    ],
                  ),
                ),
              ),
            ),
          ],
          title: Text('profile',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
        ),
        body: ListView(
      children: [
        Column(
          children: [
                DrawerHeader(
           
            child: Column(
              children: [
                
                Row(
                  children: [
                    Positioned(
                  bottom: 0,
                  left: 20,
                  right: 50,
                  
                  child:CircleAvatar(
      backgroundImage: NetworkImage("https://i.pinimg.com/564x/2a/63/7a/2a637ad55088ffa297ed62989b2061ff.jpg"),
      radius: 50,)),Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Text("Eva Maria", style: TextStyle(
          fontSize: 20
        ),),

      ),
      
                  ],
                ),
               Padding(padding: EdgeInsets.only(left: 100,),
  child: Row(
    children: [
       
      Text("Wallet balance: ₹328"), // Include the balance text after the icon
    ],
  ),
),


                
              ],
            ),
            
            
            
           ),
          Padding(padding: EdgeInsets.only(right: 280),
          child: Text("Email",style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold ),),),
          Padding(padding: EdgeInsets.only(right:140 ),
          child: Text("evamaria@gmail.com",style: TextStyle(fontSize: 20),),),
          Padding(padding: EdgeInsets.only(right: 280,top: 20),
          child: Text("Phone",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),),
          Padding(padding: EdgeInsets.only(right: 190),
          child: Text("+91 9712345678",style: TextStyle(
            fontSize: 18
          ),),),
          Padding(padding: EdgeInsets.only(top: 50, right:150 ),
          child: Text("Change Password", style: TextStyle(fontSize: 25),),),

Row(
  children: [
    Padding(
      padding: EdgeInsets.only(top: 30, left: 5),
      child: Text(
        "Address",
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
    ),
    Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
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
      ),
    ),
  ],
),

          Padding(padding: EdgeInsets.only(right: 290),
          child: Text("Eva maria"),),
          Padding(padding: EdgeInsets.only(right: 220),
          child: Text("Flat no:5D , 11th floor"),),
          Padding(padding: EdgeInsets.only(right: 200),
          child: Text("Building name, city name"),),
          Padding(padding: EdgeInsets.only(right: 220),
          child: Text("Landmark,Area name"),),
          Padding(padding: EdgeInsets.only(right: 270),
          child: Text("Pin: 6912345"),),
          Padding(padding: EdgeInsets.only(right: 210),
          child: Text("Mob: +91 9712345678"),),

          Padding(padding: EdgeInsets.only(top: 50),
          child: ElevatedButton(onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (_)=>Addupdate()));
          },
          style:ElevatedButton.styleFrom(
            backgroundColor: Colors.transparent,
            
          ),
          
           child: Text("Add New Address")))
          ],

        )
      ],
        ),
        
        ));
  }
}