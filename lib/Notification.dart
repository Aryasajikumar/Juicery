import 'package:flutter/material.dart';
import 'package:juiceproject/Allerts.dart';
import 'package:juiceproject/cart.dart';
import 'package:juiceproject/offerstab.dart';

class NotificationPage extends StatefulWidget{
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  int counter =0;
  @override
  Widget build(BuildContext context){
    var list =[];
   return DefaultTabController(
      length: 2,
      child: Scaffold(
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
      onTap: () {},
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
          title: Text('Notification',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
          bottom: TabBar(
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorColor: Colors.white,
            tabs:[
              Tab(iconMargin: EdgeInsets.all(100),
              child:Text('ALLERTS', style: TextStyle(fontSize: 20,
              fontWeight: FontWeight.bold,color: Colors.white),) ,),
              Tab(
                child: Text('OFFERS',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
              ),
              
            ] ),
        ),

       body:TabBarView(children:[
       ALLERTSTab(),
       OFFERSTab(),
      
        
       ]) ,
      ),
    );
    
  }
}
