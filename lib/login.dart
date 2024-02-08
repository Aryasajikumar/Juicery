import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:juiceproject/Homescreen.dart';
import 'package:juiceproject/Registration.dart';
import 'package:juiceproject/api.dart';
import 'package:juiceproject/password.dart';
import 'package:shared_preferences/shared_preferences.dart';


class Login extends StatefulWidget {
const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _emailController = TextEditingController();

  final _passwordController = TextEditingController();

  // void showErrorMessage(String message, BuildContext context) async{
  // MotionToast.error(
  //     title: const Text(
  //       'Error',
  //       style: TextStyle(
  //         fontWeight: FontWeight.bold,
  //       ),
  //     ),
  //     description: Text(message),
  //     position: MotionToastPosition.top,
  //     barrierColor: Colors.black.withOpacity(0.3),
  //     width: 300,
  //     height: 80,
  //     dismissable: false,
  //   ).show(context);

  // }

  // void showSuccessMessage (String message, BuildContext context) async {
  // fut();
  //   MotionToast.success(
  //     title: const Text(
  //       'Success',
  //       style: TextStyle(
  //         fontWeight: FontWeight.bold,
  //       ),
  //     ),
  //     description: Text(message),
  //     position: MotionToastPosition.top,
  //     barrierColor: Colors.black.withOpacity(0.3),
  //     width: 300,
  //     height: 80,
  //     dismissable: false,
  //   ).show(context);

      
     
  // }
   bool _passwordVisible = false;
Future<void> fut() async {
  await Future.delayed(Duration(seconds: 4));

 
}
  @override
  Widget build(BuildContext context) {
   
   
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(padding:EdgeInsets.only(top:10),
            child: Text("Juice",style:
             TextStyle(
              fontFamily:"AbrilFatface",fontSize: 120,color: Colors.deepOrange
            )
            
            ,), ),
            Padding(padding: EdgeInsets.only(top: 10,left: 20),
            child: Text("WE MAKE HEALTHY TASTE GOOD",style: TextStyle(
              color: const Color.fromARGB(135, 0, 0, 0),fontSize: 40,fontWeight: FontWeight.bold
            ),),),
            Padding(
              padding: EdgeInsets.only(left: 15, right: 15, top: 10,),
              child:TextFormField(
            controller: _emailController,
            decoration: InputDecoration(
              labelText: 'Email ',
            ),
            keyboardType: TextInputType.emailAddress,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your email address';
              }
              // Use a regular expression to validate the email format
              if (!RegExp(r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$').hasMatch(value)) {
                return 'Please enter a valid email address';
              }
              return null;
            },
            ),
              
              
        
            ),
            Padding(
              padding: EdgeInsets.only(left: 15.0, right: 15.0, top: 30,),
              child: TextFormField(
         keyboardType: TextInputType.text,
         controller: _passwordController,
         obscureText: !_passwordVisible,//This will obscure text dynamically
         decoration: InputDecoration(
             labelText: 'Password',
             hintText: 'Enter your password',
             // Here is key idea
             suffixIcon: IconButton(
            icon: Icon(
              // Based on passwordVisible state choose the icon
               _passwordVisible
               ? Icons.visibility
               : Icons.visibility_off,
               color: Theme.of(context).primaryColorDark,
               ),
            onPressed: () {
               // Update the state i.e. toogle the state of passwordVisible variable
               setState(() {
                   _passwordVisible = !_passwordVisible;
               });
             },
            ),
          ),
        ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 60, top: 30),
                  child: Container(
                    height: 50,
                    width: 250,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        _loginUser(context);
                      
        
                      },
                    style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepOrangeAccent,
                   
                  ),
                      child: Text(
                        'Login',
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
            SizedBox(
              height: 130,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,),
              child: Row(
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Registration()),
                      );
                    },
                    child: Text(
                      'Create Account',
                      style: TextStyle(color: Color.fromARGB(168, 0, 0, 0), fontSize: 20),
                    ),
                  ),
                  Row(
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => PassWord()));
                        },
                        child: Text(
                          'Forgot Password',
                          style: TextStyle(color: Color.fromARGB(168, 0, 0, 0), fontSize: 20),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _loginUser(BuildContext context) async {

    final _email = _emailController.text;
    final _password = _passwordController.text;
    print("FFFFFFFFFFFFFFFFFFFFFFFFFFFFF $_password");
 
    if (_email.isEmpty) {
 showErrorMessage('Please enter valid email id',context);
    } else if (_password.isEmpty) {
 showErrorMessage('Please enter your password',context);
    } else {
      final _formData = FormData.fromMap({'email': _email, 'password': _password});
    
      final _result = await ApiClass().loginUserApi(_formData);
      print("QQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQ $_result");

      
      if (_result != null) {
    
        if (_result.status == true) {

 //showSuccessMessage (_result.message!,context);
   Navigator.push(context, MaterialPageRoute(builder: (_) => HomeScreen()));

     SharedPreferences pref =await SharedPreferences.getInstance();
            pref.setString("email", _email);
  
        } else {
        showErrorMessage(_result.message!,context);
        }
      }
    }
  }

Widget _buildTextField(String label, {bool obscureText = false}) {
  return TextField(
    controller: obscureText ? _passwordController : _emailController,
    obscureText: obscureText,
    decoration: InputDecoration(
      labelText: label,
      border: OutlineInputBorder(),
    ),
  );
}
}






  