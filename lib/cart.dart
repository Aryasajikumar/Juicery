
import 'package:flutter/material.dart';
import 'package:juiceproject/Notification.dart';
import 'package:juiceproject/Payment.dart';
import 'package:juiceproject/subscription.dart';
import 'package:juiceproject/success.dart';

class CartItemsScreen extends StatefulWidget{
  const CartItemsScreen ({super. key});

  @override
  State<CartItemsScreen> createState() => _CartItemsScreenState();
}

class _CartItemsScreenState extends State<CartItemsScreen> {

  int counter =0;

  List<int> cartItems = [1]; 
   String dropdownvalue = 'Morning';    
   var items = [     
    'Morning',
    'After noon',
    'Evening', 
   
  ];


  @ override
  Widget build (BuildContext context) {
    var list =[];
    int selectedOption =1;
    
    return DefaultTabController(
      length:0 , 
      child:Scaffold(
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                child: Column(
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundImage: NetworkImage(
                              "https://i.pinimg.com/564x/2a/63/7a/2a637ad55088ffa297ed62989b2061ff.jpg"),
                          radius: 50,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text(
                            "Eva Maria",
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              ListTile(
                leading: Icon(Icons.shopping_bag_rounded),
                title: Text('Shop'),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.shopping_basket_rounded),
                title: Text('My Order'),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.wallet_rounded),
                title: Text("My Wallet"),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) => succespage()));
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
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) => NotificationPage()));
                },
              ),
              ListTile(
                leading: Icon(Icons.message_rounded),
                title: Text("FAQ's"),
              ),
            ],
          ),
        ),

        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 236, 117, 20),
          toolbarHeight: 70,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: InkWell(
                child: Icon(Icons.calendar_month_outlined),
                onTap: () {},
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, right: 10),
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
              padding: const EdgeInsets.only(top: 10, right: 10),
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
          title: Text(
            'Cart',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),

        
        body: ListView.builder(
          
          itemCount: cartItems.length,
          itemBuilder:(BuildContext context,  int index) {
            
             return Column(
               children: [
                 Padding(
                   padding: const EdgeInsets.only(left: 30),
                   child: ListTile(
                    title: Text("Raw pomegranate",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                    leading: Image.network("https://www.getsecondnature.com/cdn/shop/products/Pomegranate250ml_2000x.png?v=1633505141"),
                    trailing: Text("79"),
                  
                   ),
                   
                   

                 ),
                 Padding(
                   padding: const EdgeInsets.only(right: 100),
                   child: Text("size",),
                 ),
                 Padding(
                   padding: const EdgeInsets.only(left: 70),
                   child: ListTile(
                     title: Text("250ml",style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold ),),
                     leading: Radio(value: 1,
                      groupValue: selectedOption,
                       onChanged: ( int? value) {
                         setState(() {
                           selectedOption = value!;
                           print("$value");
                         });
                       }),
                       trailing: ElevatedButton(onPressed: () {
                        Navigator.push(context,
                        MaterialPageRoute(builder: (_) => Subscribe()));
                       },
                       style: ElevatedButton.styleFrom(
                         shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                              
                            ),backgroundColor: Colors.transparent
                       ),
                       
                        child: Text("Start subscription")),
                   ),
                 ),

                   Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        if (cartItems[index] > 0) cartItems[index]--;
                      });
                    },
                    child: cartItems[index] >= 1
                        ? Icon(Icons.remove_circle)
                        : Container(child: Text('No')),
                  ),
                  Text(cartItems[index].toString()),
                  InkWell(
                    onTap: () {
                      setState(() {
                        cartItems[index]++;
                      });
                    },
                    child: Icon(Icons.add_circle),
                  ),
                ],
              ),

              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: ListTile(

                  title: Text("Strawberry",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                    leading: Image.network("https://naturalbeverage.in/wp-content/uploads/2019/12/Natural_Strawberry_Juice_-_Fruit_Juice_Supplier_250ml-1.jpg"),
                    trailing: Text("79"),
                  
                ),
              ),
                Padding(
                   padding: const EdgeInsets.only(right: 100),
                   child: Text("size",),
                 ),
                 Padding(
                   padding: const EdgeInsets.only(left: 70),
                   child: ListTile(
                     title: Text("250ml",style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold ),),
                     leading: Radio(value: 1,
                      groupValue: selectedOption,
                       onChanged: ( int? value) {
                         setState(() {
                           selectedOption = value!;
                           print("$value");
                         });
                       }),
                       trailing: ElevatedButton(onPressed: () {
                        Navigator.push(context,
                        MaterialPageRoute(builder: (_) => Subscribe()));
                       },
                       style: ElevatedButton.styleFrom(
                         shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                              
                            ),backgroundColor: Colors.transparent
                       ),
                       
                        child: Text("Start subscription")),
                   ),
                 ),
                 
                   Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        if (cartItems[index] > 0) cartItems[index]--;
                      });
                    },
                    child: cartItems[index] >= 1
                        ? Icon(Icons.remove_circle)
                        : Container(child: Text('No')),
                  ),
                  Text(cartItems[index].toString()),
                  InkWell(
                    onTap: () {
                      setState(() {
                        cartItems[index]++;
                      });
                    },
                    child: Icon(Icons.add_circle),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40),
                child: Row(
                  children: [
                     Text("start Date",style: TextStyle(fontSize: 15),),
                     Padding(
                       padding: const EdgeInsets.only(left: 70),
                       child: Text("End Date",style: TextStyle(fontSize: 15),),
                     )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30,left: 30),
                child: Row(
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Text("17 July 2017 "),
                                    Icon(Icons.calendar_month),
                                
                        ],
                      ),
                    ),Padding(
                      padding: const EdgeInsets.only(left: 40),
                      child: Container(
                        child: Row(
                          children: [
                            Text("30 July 2017"),
                            Icon(Icons.calendar_month)
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(right: 220),
                child: Text("Day of week",style: TextStyle(fontWeight: FontWeight.bold),),
              ),
              Padding(padding: EdgeInsets.only(left: 10),
              child: Row(
                children: [
                  Container(
                    color: Colors.greenAccent,
                    height: 50,
                    width: 40,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10,top: 10),
                      child: Text("SUN"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Container(
                      color: Color.fromARGB(255, 232, 224, 196),
                      height: 50,
                      width: 50,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10,top: 10),
                        child: Text("MON"),
                      ),
                    ),
                  ),
                   Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Container(
                      color: Color.fromARGB(255, 232, 224, 196),
                      height: 50,
                      width: 50,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10,top: 10),
                        child: Text("TUE"),
                      ),
                    ),
                  ),

                   Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Container(
                      color: Color.fromARGB(255, 106, 226, 142),
                      height: 50,
                      width: 50,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10,top: 10),
                        child: Text("WED"),
                      ),
                    ),
                  ),

                  
                   Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Container(
                      color: Color.fromARGB(255, 106, 226, 142),
                      height: 50,
                      width: 50,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10,top: 10),
                        child: Text("THU"),
                      ),
                    ),
                  ),
                   Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Container(
                      color: Color.fromARGB(255, 232, 224, 196),
                      height: 50,
                      width: 50,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10,top: 10),
                        child: Text("FRI"),
                      ),
                    ),
                  ),



                ],
              ),),
              Padding(padding: EdgeInsets.only(left: 20,top: 10),
              child: Row(
                children: [
                  Text("Delivery Slot",style:TextStyle(fontWeight: FontWeight.bold) ,),
               
                Padding(
                  padding: const EdgeInsets.only(left: 100),
                  child: Text("Total amount",style: TextStyle(fontWeight: FontWeight.bold),),
                )
                ],
              ),),

               Padding(
                 padding: const EdgeInsets.only(right: 50,left: 10),
                 child: Row(
                   children: [
                     Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: DropdownButton( 
                        
                                   // Initial Value 
                                   value: dropdownvalue, 
                        
                                   // Down Arrow Icon 
                                   icon: const Icon(Icons.keyboard_arrow_down),     
                        
                                   // Array list of items 
                                   items: items.map((String items) { 
                        return DropdownMenuItem( 
                          value: items, 
                          child: Text(items), 
                        ); 
                                   }).toList(), 
                                   // After selecting the desired option,it will 
                                   // change button value to selected value 
                                   onChanged: (String? newValue) {  
                        setState(() { 
                          dropdownvalue = newValue!; 
                        }); 
                                   }, 
                                 ),
                     ),
                               Padding(
                                 padding: const EdgeInsets.only(left: 50),
                                 child: Text("15 times * 1item = 79",),
                               )
                   ],
                 ),
               ), 
               Container(
                height: 40,
                width: 200,
                 child: ElevatedButton(onPressed: () {
                  Navigator.push(context
                  , MaterialPageRoute(builder: (_)=> Payment()));
                 },
                 
                 style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.pinkAccent
                 ), child: Text("Pay now")),
               )
              


               ],
             );

          }) 
          )
          );


        }
        
  
  
}