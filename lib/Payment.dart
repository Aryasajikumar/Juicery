import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:juiceproject/Notification.dart';
import 'package:juiceproject/cart.dart';
import 'package:juiceproject/wallet.dart';

class Payment extends StatefulWidget{
  const Payment ({super.key});

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
   int counter =0;

  @override
  Widget build(BuildContext context){
    var list =[];
   return DefaultTabController(length: 0,
   
    child:Scaffold(
         drawer: Drawer(
          
        child: ListView(children: [
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
                
              ],
            ),
            
            
           ),
           
   
            
          ListTile(
            leading:Icon( Icons.shopping_bag_rounded, ),
            title: Text('Shop'),
            onTap: () {},

    ),
    ListTile(
      leading: Icon( Icons.shopping_basket_rounded, ),
      title: Text('My Order'),
      onTap: () {},
    ),
    ListTile(
      leading: Icon(Icons.wallet_rounded),
      title: Text("My Wallet"),
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (_)=>Walletpage()));
      },
    ),
    ListTile(
      leading: Icon(Icons.account_circle_rounded),
      title: Text("My Account"),
      onTap: () {},
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
          title: Text('Payment',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),), ),
          
          body: ListView(
            children: [
              ListTile(
               
                leading: Icon(Icons.wallet_rounded),
                title: Text("Wallet(Balance:)",style: TextStyle(fontWeight:FontWeight.bold),),
              ),

              ListTile(
                leading: FaIcon(FontAwesomeIcons.internetExplorer),
                title: Text('Net Banking',style: TextStyle(fontWeight:FontWeight.bold),), 
              ),
              ListTile(
                leading: FaIcon(FontAwesomeIcons.creditCard), 
                title: Text('Card Payment',style: TextStyle(fontWeight:FontWeight.bold),),
              ),
              ListTile(
                leading: FaIcon(FontAwesomeIcons.moneyBillAlt) ,
                title: Text('Cash On Delivery',style: TextStyle(fontWeight:FontWeight.bold),),
              ),
               Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 50, top: 30),
                  child: Container(
                    height: 50,
                    width: 250,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        
                        Navigator.push(context, MaterialPageRoute(builder: (_) => Walletpage()));


                      },
                      child: Text(
                        'PROCEED TO PAY',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),






              // ElevatedButton(onPressed: () {
              //   Navigator.push(context, MaterialPageRoute(builder: (_) => Walletpage()));
              // },
              // style: ButtonStyle(
              //   minimumSize: MaterialStateProperty.all(Size(50, 50)),
              
              // padding: MaterialStateProperty.all(EdgeInsets.all(8.0))),
              //  child:Text('PROCEED TO PAY'))
            ],
          ),
          )
    );
  }
}