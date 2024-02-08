

import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:juiceproject/Notification.dart';
import 'package:juiceproject/cart.dart';
import 'package:juiceproject/subscription.dart';
import 'package:juiceproject/success.dart';

class Details extends StatefulWidget {
 //const Details({Key? key});
   String productname;
    Details({Key? key, required this.productname}) : super(key: key);


  @override
   _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
    String juice1="";
  String juice2="";
  String juice3="";
  String juice4="";
  
  String Description="";
String str1='';
String str2="";
String str3="";
String str4="";
String ml="";
String gram1 = "";
String gram2="";
String gram3 ="";
String calories="";
String fat="";
String Cholestrol="";
String gram4 ="";


@override
   void initState() {
  //   // TODO: implement initState
   super.initState();
   if (widget.productname == "Raw pomegranate") {
    setState(() {
      
      
      str1="https://m.media-amazon.com/images/W/MEDIAX_792452-T2/images/I/611a1wD9ZGL._AC_UF1000,1000_QL80_.jpg";
      str2="https://www.indianhealthyrecipes.com/wp-content/uploads/2021/05/pomegranate-juice-recipe.jpg.webp";
      str3="https://media.istockphoto.com/id/627762002/photo/natural-pomegranate-juice-in-a-mason-jar.jpg?s=612x612&w=0&k=20&c=V0rHzup_wfAOY8oxaU9GjAGW8j-gpUOjikE2ToMdS5o=";
      str4="https://www.alphafoodie.com/wp-content/uploads/2020/03/Pomegranate-Juice-34-of-37.jpeg";
      juice1="Raw pomegranate";
    
    Description="Raw Pressery Pomegranate juice improves blood flow and blood pressure to give you a healthy heart. This sparkling red juice controls the blood bad cholesterol level. Our Juices are Rich in Easy - to - Absorb Vitamins, Minerals, Proteins and Enzymes. It is an Elixir for your Heart.";
    ml="200 ml:";
    
    gram1='87g';
     gram2='80';
     gram3='0.5';
    fat="fat";

    calories="Calories:";
    Cholestrol="Cholestrol";
    gram4="0mg";


    });
    } if( widget.productname == "Specil grape juice") {
     
       setState(() {
        str1="https://as1.ftcdn.net/v2/jpg/02/45/69/94/1000_F_245699448_RKQRxCSEzxnmOAINCRosfLYHxkiO3bRL.jpg";
        str2="https://c8.alamy.com/comp/2FKNNF1/grape-juice-splash-out-of-glass-with-grape-fruit-on-white-background-2FKNNF1.jpg";
        str3="https://c8.alamy.com/comp/R269NB/isolated-drink-glass-of-red-grape-juice-isolated-on-white-background-with-clipping-path-R269NB.jpg";
        str4="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ9Rb1geLtoA5wka9SJ_7bACVdAxVD2L0ZCBglQY3CvI_kMKbITWyOTg4Gx3Db_BtAqgpk&usqp=CAU";
        juice2="Specil grape juice";
        
        Description="Grape juice  means unfermented crushed grapes without solids containing the major portion of the original water content. Grape juice means the unfermented liquid product having actual alcoholic strength of not more than 1 % vol.";

        ml="200 ml";
        gram1="87g";
        gram2="80";
        gram3="0.5";
        fat="fat";
        calories="Calories";
        Cholestrol="Cholestrol";
        gram4="0mg";

       });
   

    }  if (widget.productname == "Strawberry") {
     
     setState(() {
       
       str1="https://plantbasedonabudget.com/wp-content/uploads/2023/07/Strawberry-Juice-Plant-Based-on-a-Budget-1-2-1.jpg";
       str2="https://foodtasia.com/wp-content/uploads/2022/06/strawberry-juice-2-1.jpeg";
       str3="https://www.organicfacts.net/wp-content/uploads/strawberryjuice.jpg";
       str4="https://ourplantbasedworld.com/wp-content/uploads/2021/03/how-to-make-strawberry-juice-8744.jpg";
       juice3="Strawberry";
       Description="Strawberry Juice is a refreshing fresh fruit juice that is full of vitamin C and antioxidants and lot of invigorating flavor. Apart from fresh and ripe strawberries, this recipe also uses lime juice to make it tantalizing.";
       ml="200ml";
       gram1="87g";
       gram2="80";
       gram3="0.5";
       fat="fat";
       calories="Calories";
        Cholestrol="Cholestrol";
       gram4="0mg";
     });
    }  if (widget.productname == "Fressery apple juice"){
     

     setState(() {
       str1="https://images.prismic.io/goodnature/ZDIxNjE5ZTAtYjlhMi00ZTlmLTkxNTktODZiODA1YzkxNmFh_apple-juice-hero.jpg?auto=compress,format&rect=0,0,1200,628&w=1200&h=628";
       str2="https://8thwondertea.com/cdn/shop/articles/custom_resized_175073ac-3882-473d-9cc7-b98eebd67d13.jpg?v=1678563564";
       str3="https://www.mashed.com/img/gallery/apple-juice-brands-ranked-worst-to-best/intro-1621953689.jpg";
       str4="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSODXBw0aVnVEeb0kEtHOjtl9p3S2Z6WZkVKTgpxXAalw&s";
       juice4="Fressery apple juice";
       Description="Apple juice is 88% water and 11% carbohydrates (including 9% sugars), with negligible content of protein or fat. A 100 ml reference amount of unsweetened apple juice supplies 46 calories and no significant content of any micronutrients.";

       ml="200ml";
      gram1="87g";
       gram2="80";
       gram3="0.5";
       fat="fat";
       calories="Calories";
       Cholestrol="Cholestrol";
       gram4="0mg";
     });
   } 
   }
  int counter = 0;
  int value = 0;

  Widget CustomRadidoButton(int index, String text) {
    return Container(
      width: 50,
      child: OutlinedButton(
        onPressed: () {
          setState(() {
            value = index;
          });
        },
        child: Text(
          text,
          style: TextStyle(
            color: (value == index) ? Colors.green : Colors.black,
          ),
        ),
        style: OutlinedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          side: BorderSide(
            color: (value == index) ? Colors.green : Colors.black,
          ),
        ),
      ),
    );
  }

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    var list = [];
  

    return 
     DefaultTabController(
      length: 0,
      child: Scaffold(
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
            'Details',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              CarouselSlider(
                items: [
                  Container(
                    margin: EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      image: DecorationImage(
                        image: NetworkImage(
                            str1),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      image: DecorationImage(
                        image: NetworkImage(
                            str2),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      image: DecorationImage(
                        image: NetworkImage(
                            str3),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      image: DecorationImage(
                        image: NetworkImage(
                            str4),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
                options: CarouselOptions(
                  height: 200,
                  enlargeCenterPage: true,
                  autoPlay: true,
                  aspectRatio: 16 / 9,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enableInfiniteScroll: true,
                  autoPlayAnimationDuration: Duration(milliseconds: 500),
                  viewportFraction: 0.8,
                  onPageChanged: (index, reason) {
                    setState(() {
                      currentIndex = index;
                    });
                  },
                ),
              ),
              DotsIndicator(
                dotsCount: 4,
                position: currentIndex,
              ),
              Column(
                children: [
                  Text(
                    widget.productname,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Text("Size"),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20, left: 70),
                        child: Row(
                          children: [
                            Container(
                              height: 35,
                              width: 100,
                              child: CustomRadidoButton(1, "200ml"),
                            ),
                            Container(
                              height: 35,
                              width: 100,
                              child: Expanded(
                                child: CustomRadidoButton(2, "500ml"),
                                flex: 2,
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: 150,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => CartItemsScreen(),
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.orange,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            padding: EdgeInsets.all(10.0),
                          ),
                          child: Text('Add to cart'),
                        ),
                      ),
                      Container(
                        width: 150,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => Subscribe(),
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.orange,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            padding: EdgeInsets.all(10.0),
                          ),
                          child: Text('Subscribe'),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 200),
                        child: Text(
                          'Description',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Text(
                          Description,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 160, top: 10),
                        child: Text(
                          'Nutrition Facts',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Padding(padding: EdgeInsets.only(top: 10, right: 20),
                          child: Icon(Icons.circle_outlined, color: Colors.red,),
                          ),
                          Text(ml, style: TextStyle(
                            fontWeight: FontWeight.bold
                          ),),
                          Padding(padding: EdgeInsets.only(left: 200),
                          
                          child: Text(gram1, style: TextStyle(fontWeight: FontWeight.bold),),)
                        ],
                      ),
                      Row(
                        children: [
                          Padding(padding: EdgeInsets.only(top: 10, right: 20),
                          child: Icon(Icons.circle_outlined, color: Colors.red,),),
                          Text(calories, style: TextStyle(fontWeight: FontWeight.bold),),
                       
                         Padding(
                           padding: const EdgeInsets.only(left: 190),
                           child: Text(gram2,style: TextStyle(fontWeight: FontWeight.bold),),
                         )
                        ],
                      ),
                      Row(
                        children: [
                          Padding(padding: EdgeInsets.only(top: 10, right: 20),
                          child: Icon(Icons.circle_outlined, color: Colors.red,),),
                          Text(fat, style: TextStyle(fontWeight: FontWeight.bold),),
                       
                         Padding(
                           padding: const EdgeInsets.only(left: 220),
                           child: Text(gram3,style: TextStyle(fontWeight: FontWeight.bold),),
                         )],
                      ),

                       Row(
                        children: [
                          Padding(padding: EdgeInsets.only(top: 10, right: 20),
                          child: Icon(Icons.circle_outlined, color: Colors.red,),),
                          Text(Cholestrol, style: TextStyle(fontWeight: FontWeight.bold),),
                       
                         Padding(
                           padding: const EdgeInsets.only(left: 175),
                           child: Text(gram4,style: TextStyle(fontWeight: FontWeight.bold),),
                         )],
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}













