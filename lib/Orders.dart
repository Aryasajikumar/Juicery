import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:juiceproject/Notification.dart';
import 'package:juiceproject/cart.dart';

import 'package:juiceproject/success.dart';

class Order extends StatefulWidget{
  const Order ({super.key});

  @override
  State<Order> createState() => _OrderState();
}

class _OrderState extends State<Order> {
  var jsonList;
   List<int> cartItems=[]; 
   int counter =0;
   @override
   Widget build(BuildContext context){
   var list=[];
   return DefaultTabController(length: 0,
    child:Scaffold(

       drawer: Drawer(
          
        child: ListView(children: [
          DrawerHeader(
           
            child: Column(
              children: [
                Row(
                  children: [
                    CircleAvatar(
      backgroundImage: NetworkImage("https://i.pinimg.com/564x/2a/63/7a/2a637ad55088ffa297ed62989b2061ff.jpg"),
      radius: 50,),Padding(
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
        Navigator.push(context, MaterialPageRoute(builder: (_)=>succespage()));
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
          toolbarHeight: 100,
          
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: InkWell(
                child: Icon(Icons.calendar_month_outlined),
                onTap: () {},
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25,right: 10),
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
              padding: const EdgeInsets.only(top:25,right: 10),
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
          title: Text('Wallet',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),), ),

    ) );

   }
   
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

}
//  @override
//   Widget build(BuildContext context){
//     return Scaffold(
//       body: ListView.builder(
//           itemCount: jsonList == null ? 0 : jsonList.length,
//         itemBuilder: (BuildContext context, int index) { 
//             return  InkWell(
//               onTap: () {
//                 Navigator.push(context, MaterialPageRoute(builder: (_)=> Details(productname: jsonList[index]['pname'])));
//               },
//               child: Container(
//                   height: 200,
//                   width: 200,
//                   child: ListTile(
//                     title: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                   Row(
//                     children: [
//                       InkWell(child: Text(jsonList[index]["pname"] ),
//                       onTap: (){
//               Navigator.push(context, MaterialPageRoute(builder: (_) => Details(productname:jsonList[index]["pname"],) ));
                      
//                       },
//                       ),
//                     ],
//                   ),
//                   Column(
//                     children: [
                  
//                       Row(
//               children: [
//                Container(
//                 height: 30,
//                 width: 80,
//                 child: CustomRadidoButton(1, "200ml")),
               
//               ],
//                       ),
//                       Row(
//                         children: [
//                           Padding(padding: EdgeInsets.only(right: 30),
//                           child: Text("Order ID", style: TextStyle(fontSize: 12),),),
//                           Padding(padding: EdgeInsets.only(right: 20),
//                           child: Text("Date", style: TextStyle(fontSize: 15),),),
//                           Padding(padding: EdgeInsets.only(),
//                           child: Text("Status",style: TextStyle(fontSize: 15),),)
//                         ],
//                       ),
//                       Row(
//                         children: [
//                           Padding(padding: EdgeInsets.only(right: 15),
//                           child: Text("123ABCS",style: TextStyle(fontSize: 10),),),
//                           Padding(padding: EdgeInsets.only(right: 10),
//                           child: Text("25 June 2017",style: TextStyle(fontSize: 10),),),
//                           Padding(padding: EdgeInsets.only(),
//                           child: Text("Sheduled",style: TextStyle(fontSize: 10),),)
//                         ],
//                       )
                     
                      
//                     ],
//                   ),
                  
                  
                  
                   
//                   ],
//                     ),
//                     leading: Image.network(
//                   jsonList[index]['image'],
//                   fit: BoxFit.fill,
//                   width: 100,
//                   height: 250,
//                     ),
                  
//                     trailing:PopupMenuButton(
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(10)
//                       ),
                      
//                       itemBuilder: (context) {
//                         return [
//                           PopupMenuItem(
//                             child: Row(
//                               children: [
//                                 Icon(Icons.cancel_schedule_send_sharp),
//                                 Text("Cancel Order"),
//                               ],
//                             ),
//                           )
//                         ];
                      
//                     },),
//                   ),
//                   ),
//             );},)
//     );
//   }
// }