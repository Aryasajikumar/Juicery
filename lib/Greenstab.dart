
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:juiceproject/cart.dart';
import 'package:juiceproject/details.dart';

class GreensTab extends StatefulWidget{
  const GreensTab ({Key? key}) : super (key: key);

  @override
  State<GreensTab> createState() => _GreensTabState();
}

class _GreensTabState extends State<GreensTab> {
 var jsonList;
   List<int> cartItems=[]; 
 
  @override
  void initState(){
    getData();
  }
  void getData() async {
    try {
      var response = await Dio()
      .get('http://iroidtechnologies.in/Fressery/Fressery_Api/products');
     if (response.statusCode == 200) {
      setState(() {
        jsonList = response.data['data'] as List;

         cartItems = List.generate(jsonList.length, (index) => 0);
        print (jsonList);
      });
     } else {
      print (response.statusCode);
     }
   
    } catch (e) {
      print (e);
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
  Widget build(BuildContext context){
    return Scaffold(
      body: ListView.builder(
        itemCount: jsonList == null ? 0 : jsonList.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 200,
  width: 150,
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
      InkWell(
        child: Column(
          children: [
      
            Padding(
              padding: const EdgeInsets.only(top:10),
              child: Row(
                children: [
                  Container(
                  height: 30,
                  width: 80,
                  child: CustomRadidoButton(1, "200ml")),
                  Container(
                    height: 30,
                    width: 80,
                    child: CustomRadidoButton(2, "500ml"))
            
                
               ],
              ),
            ),
              Padding(
                padding: const EdgeInsets.only(top:10),
                child: Row(
                children: [
              
                  InkWell(
                   onTap: () {
                     setState(() {
                       cartItems[index] --;
                     });
                   },
                  
                   child: cartItems[index] >= 1 ? Icon(Icons.remove_circle) : Container(child: Text('No'),),
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
              ),
             Padding(
               padding: const EdgeInsets.only(right:80),
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

         onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (_) => Details(productname:jsonList[index]["pname"],) ));
                      
                      },
      ),
      
      

       
      ],
    ),
    leading: InkWell(
      child: Image.network(
        jsonList[index]['image'],
        fit: BoxFit.fill,
        width: 100,
        height: 250,
      ),
       onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (_) => Details(productname:jsonList[index]["pname"],) ));
                      
                      },
    ),
  //  subtitle: ElevatedButton(  //     onPressed: () {
  //       // Add your button onPressed logic here
  //     },
  //     child: Text('Add to Cart'),
  //   ),
    trailing:Text(jsonList[index]["prize"]),
  ),
          );
        }),
    );
  }
}