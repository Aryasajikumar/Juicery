import 'package:flutter/material.dart';
import 'package:juiceproject/login.dart';

class PassWord extends StatefulWidget {
  const PassWord({Key? key});

  @override
  _PassWordState createState() => _PassWordState();
}

class _PassWordState extends State<PassWord> {
  bool passwordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 230, 81, 7),
      body: SingleChildScrollView(
        child: Column(
          children: [

             Padding(padding: EdgeInsets.only(left: 15,right: 15,top: 100,bottom: 0),
            child: TextField(
                obscureText: !passwordVisible,
                decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                  hintText: "Password",
                  labelText: " Current Password",labelStyle: TextStyle(fontWeight: FontWeight.bold),
                  helperText: "Password must contain a special character",
                  helperStyle: TextStyle(color: Colors.green),
                  suffixIcon: IconButton(
                    icon: Icon(
                      passwordVisible
                          ? Icons.visibility
                          : Icons.visibility_off,
                    ),
                    onPressed: () {
                      setState(() {
                        passwordVisible = !passwordVisible;
                      });
                    },
                  ),
                  alignLabelWithHint: false,
                  filled: true,
                ),
                keyboardType: TextInputType.visiblePassword,
                textInputAction: TextInputAction.done,
              ),),
            Padding(
              padding: const EdgeInsets.only(left: 15,right: 15,top: 50,bottom: 0),
              child: TextField(
                obscureText: !passwordVisible,
                decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                  hintText: "Password",
                  labelText: "Password",labelStyle: TextStyle(fontWeight: FontWeight.bold),
                  helperText: "Password must contain a special character",
                  helperStyle: TextStyle(color: Colors.green),
                  suffixIcon: IconButton(
                    icon: Icon(
                      passwordVisible
                          ? Icons.visibility
                          : Icons.visibility_off,
                    ),
                    onPressed: () {
                      setState(() {
                        passwordVisible = !passwordVisible;
                      });
                    },
                  ),
                  alignLabelWithHint: false,
                  filled: true,
                ),
                keyboardType: TextInputType.visiblePassword,
                textInputAction: TextInputAction.done,
              ),
            ),
            Padding(padding: EdgeInsets.only(left: 15,right: 15,top: 50,bottom: 0),
            child: TextField(
                obscureText: !passwordVisible,
                decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                  hintText: "Password",
                  labelText: " Confirm Password",labelStyle: TextStyle(fontWeight: FontWeight.bold),
                  helperText: "Password must contain a special character",
                  helperStyle: TextStyle(color: Colors.green),
                  suffixIcon: IconButton(
                    icon: Icon(
                      passwordVisible
                          ? Icons.visibility
                          : Icons.visibility_off,
                    ),
                    onPressed: () {
                      setState(() {
                        passwordVisible = !passwordVisible;
                      });
                    },
                  ),
                  alignLabelWithHint: false,
                  filled: true,
                ),
                keyboardType: TextInputType.visiblePassword,
                textInputAction: TextInputAction.done,
              ),),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) => Login()));
              },
              child: Text('Update',style: TextStyle(
                fontSize: 30
              ),),
            ),
            TextButton(onPressed: () {

              Navigator.push(context, MaterialPageRoute(builder: (_) => Login()));
            }, child:Text('Cancel',style: TextStyle(
              fontWeight: FontWeight.bold,fontSize: 20
            ),) )
          ],
        ),
      ),
    );
  }
}

Widget _buildTextField(String label, {bool obscureText = false}) {
  return TextField(
    obscureText: obscureText,
    decoration: InputDecoration(
      labelText: label,
      border: OutlineInputBorder(),
    ),
  );
}
