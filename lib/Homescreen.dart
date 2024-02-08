import 'package:dio/dio.dart';

import 'package:flutter/material.dart';
import 'package:juiceproject/Greenstab.dart';
import 'package:juiceproject/Logout.dart';
import 'package:juiceproject/MixTab.dart';

import 'package:juiceproject/Notification.dart';
import 'package:juiceproject/Orders.dart';
import 'package:juiceproject/Payment.dart';
import 'package:juiceproject/cart.dart';
import 'package:juiceproject/details.dart';
import 'package:juiceproject/profile.dart';
import 'package:juiceproject/wallet.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int counter = 0;
  

  @override
  

  Widget build(BuildContext context) {
    // Initialize the list variable with some value
    var list = []; 
  // Replace this with your actual list

    return DefaultTabController(
      length: 3,
      child: Scaffold(
         drawer: Drawer(
          //child: CircleAvatar(
            //backgroundImage: NetworkImage("
        //radius: 10,  ),
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
           
   
            
          ListTile(
            leading:Icon( Icons.shopping_bag_rounded, ),
            title: Text('Shop'),
            onTap: () {},

    ),
    ListTile(
      leading: Icon( Icons.currency_rupee_rounded, ),
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
      leading: Icon( Icons.shopping_basket_rounded, ),
      title: Text('Orders'),
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (_)=> Order()));
      },
    ),
    ListTile(
      leading: Icon(Icons.account_circle_rounded),
      title: Text("My Account"),
      onTap: () {

        Navigator.push(context, MaterialPageRoute(builder: (_)=> Profile()));
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
          title: Text('Fressery',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
          bottom: TabBar(
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorColor: Colors.white,
            tabs:[
              Tab(iconMargin: EdgeInsets.all(100),
              child:Text('Plain', style: TextStyle(fontSize: 20,
              fontWeight: FontWeight.bold,color: Colors.white),) ,),
              Tab(
                child: Text('Mix',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
              ),
              Tab(
                child: Text('Greens',style: TextStyle(
                  fontSize:20,fontWeight: FontWeight.bold,color: Colors.white  
                ),),
              )
            ] ),
        ),

       body:TabBarView(children:[
       PlainTab(),
       MixTab(),
       GreensTab(),

        
       ]) ,
      ),
    );
    
  }
}


class PlainTab extends StatefulWidget{

  const PlainTab ({super.key});

  @override
  State<PlainTab> createState() => _PlainTabState();
}

class _PlainTabState extends State<PlainTab> {
  var jsonList;
  List<int> cartItems=[]; 

 
  @override
  void initState() {
    super.initState();
  
    getData();
  }
  void getData() async {
    try {
      var response = await Dio()
      .get('http://iroidtechnologies.in/Fressery/Fressery_Api/products'
      );
     
      if ( response.statusCode == 200) {
        setState(() {
          jsonList = response.data['data'] as List;
          cartItems = List.generate(jsonList.length, (index) => 0);
          print(jsonList);
        });

      } else {
        print(response.statusCode);

      }
    } catch (e) {
      print('e');
    }
  }
 int value =0;
Widget CustomRadidoButton( int index,String text,){
  return OutlinedButton(onPressed: (){
        setState(() {
          value = index;
        });
      },
      child: Text(
        text,
        style: TextStyle(
          color: (value == index) ? Colors.green  : Colors.black,
        ),
      ),
      style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    
      side: BorderSide(color: (value == index) ? Colors.green  : Colors.black),
      )
      
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: jsonList == null ? 0 : jsonList.length,
        itemBuilder: (BuildContext context, int index) { 
            return  InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_)=> Details(productname: jsonList[index]['pname'])));
              },
              child: Container(
                  height: 200,
                  width: 200,
                  child: ListTile(
                    title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Row(
                    children: [
                      InkWell(child: Text(jsonList[index]["pname"] ),
                      onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (_) => Details(productname:jsonList[index]["pname"],) ));
                      
                      },
                      ),
                    ],
                  ),
                  Column(
                    children: [
                  
                      Row(
              children: [
               Container(
                height: 30,
                width: 80,
                child: CustomRadidoButton(1, "200ml")),
                Expanded(flex: 1,
                  child: CustomRadidoButton(2, "500ml"))
              ],
                      ),
                      Row(
              children: [
                      
                InkWell(
                  onTap: () {
                    setState(() {
                      if (cartItems[index] > 0) cartItems[index]--;
                     //
                     // cartItems[index] --;
                    });
                  },
                 
                  child:  cartItems[index] >= 1
                        ? Icon(Icons.remove_circle)
                        : Container(child: Text('No')),
                  
                  //cartItems[index] >= 1 ? Icon(Icons.remove_circle) : Container(child: Text('No'),),
                ),
                Text(cartItems[index].toString()),
                InkWell(
                  onTap: () {
                    setState(() {
                      cartItems[index] ++;
                    });
                  },
                  child: Icon(Icons.add_circle),
                ),
                      
                
                
              ],
                      ),
                      Padding(
              padding: const EdgeInsets.only(right: 75),
              child: ElevatedButton(onPressed: () {
                    Navigator.push(context,
                     MaterialPageRoute(builder:(_) => CartItemsScreen()));
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)
                    ),
                    padding: EdgeInsets.all(10.0)
                  ),
                   child: Text('Add to cart') ),
                      ),
                    ],
                  ),
                  
                  
                  
                   
                  ],
                    ),
                    leading: Image.network(
                  jsonList[index]['image'],
                  fit: BoxFit.fill,
                  width: 100,
                  height: 250,
                    ),
                  
                    trailing:Text(jsonList[index]["prize"]),
                  ),
                  ),
            );
      
      
      
      
          // return Container(
          //   height: 150,
          //   width: 150,
        
          //   child: ListTile(
              
          //     leading:Image.network(jsonList[index]['image'],
          //              fit: BoxFit.fill,
          //             width: 100,
          //            height: 200) ,
                      
          
          //            title:Text(jsonList[index]["pname"]) ,
          //            subtitle:  Text(jsonList[index]["size"]) ,
                     
          //            trailing: Text(jsonList[index]["prize"]),
          //   ),
          // );
      
          // return Card(
          //   child: Column(
          //     mainAxisAlignment: MainAxisAlignment.center,
          //     crossAxisAlignment: CrossAxisAlignment.center,
          //     children: [
          //       ClipRRect(
          //         borderRadius: BorderRadius.circular(80),
          //         child: Image.network(
          //           jsonList[index]['image'],
          //           fit: BoxFit.fill,
          //           width: 100,
          //           height: 100,
      
          //         ),
          //       ),
          //       SizedBox(height: 10,),
          //       Text(jsonList[index]["pname"]),
          //       Text(jsonList[index]["size"]),
          //       Text(jsonList[index]["prize"])
          //     ],
          //   ),
      
          // );
         },
      
      ),
    );
  }
}