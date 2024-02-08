


import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:juiceproject/api.dart';
import 'package:juiceproject/login.dart';

import 'package:motion_toast/motion_toast.dart';


class Registration extends StatefulWidget{
  const Registration({super.key});

  @override
  State<Registration> createState() => _RegistrationState();
}
 final _nameController = TextEditingController();
 final _emailController = TextEditingController();
 final _mobileController = TextEditingController();
 final _passwordController = TextEditingController();

  
class _RegistrationState extends State<Registration> {
 

 
 @override
 Widget build (BuildContext context){
  return Scaffold(

    
    backgroundColor: Colors.white,
    body: SafeArea(child: ListView(
     
      children: [

          Padding(padding:EdgeInsets.only(top:10, left: 30),
            child: Text("Juice",style:
             TextStyle(
              fontFamily:"AbrilFatface",fontSize: 120,color: Colors.deepOrange
            )
            
            ,), ),
        Padding(padding: EdgeInsets.only(top: 50,left: 15,right: 15,bottom: 0),
        child:  _buildTextField("Name:",controller: _nameController),
      ),
      
       Padding(padding: EdgeInsets.only(top: 50,left: 15,right: 15,bottom: 0),
       child:  _buildTextField("Email:", controller: _emailController),),
       
         Padding(padding: EdgeInsets.only(top: 50,left: 15,right: 15,bottom: 0),
       child: _buildTextField("mobile:", controller: _mobileController),),
        
      
       Padding(padding: EdgeInsets.only(top: 50,left: 15,right: 15,bottom: 0),
       child: _buildTextField("password:",obscureText: true,controller: _passwordController),),

       
        SizedBox(height: 20.0,),
        Padding(
          padding: const EdgeInsets.only(top: 50,bottom: 0,left: 25,right: 25),
          child: ElevatedButton(onPressed: () async {

            signupUser(context);
           

         _nameController.clear();
         _emailController.clear();
         _mobileController.clear();
         _passwordController.clear();
         Navigator.push(context, 
         MaterialPageRoute(builder: (_) => Login()));
  
       
          },
          style:ElevatedButton.styleFrom(
            backgroundColor: Colors.pinkAccent,
            
          ),
           child: Text("Register Now")),
        ),
        
      ],
    ))
  );
 }
}

void signupUser(BuildContext context) async {
 
  final _name = _nameController.text;
  final _email = _emailController.text;
  final _mobile = _mobileController.text;
  final _password = _passwordController.text;


  if (_name.isEmpty) {
    showErrorMessage('please enter name',context);
  }  else if (_email.isEmpty) {
    
    showErrorMessage('please enter email id',context);

  } else if (_mobile.isEmpty) {
    showErrorMessage('please enter your mobile number',context);
  } else if (_password.isEmpty) {
    showErrorMessage ('Please enter valid password',context);
  } else {
    final  _formData = FormData.fromMap({
     'name': _name,
     'email': _email,
     'mobile': _mobile,
     'password': _password,
     

    });

    final _result = await ApiClass().registerUserApi(_formData);
     print("RRRRRRRRRRRRRRRRRRRRRRRRRRRRRRR ${_result!.message}");
     if (_result != null) {
      if (_result.status == true) {
        showSuccessMessage(_result.message!,context);
      await  Future.delayed(Duration(seconds: 1));
 
      } else {
        showErrorMessage(_result.message!, context);
      }
     }
  
  }
}

void showErrorMessage(String message,BuildContext context){

  
       MotionToast.error(
      title: const Text(
        'Error',
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      description: Text(message),
      position: MotionToastPosition.top,
      barrierColor: Colors.black.withOpacity(0.3),
      width: 300,
      height: 80,
      dismissable: false,
    ).show(context);

}
void showSuccessMessage(String message,BuildContext context){

        

               MotionToast.success(
      title: const Text(
        'Success',
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      description: Text(message),
      position: MotionToastPosition.top,
      barrierColor: Colors.black.withOpacity(0.3),
      width: 300,
      height: 80,
      dismissable: false,
      toastDuration: Duration(seconds: 1),
    ).show(context);

}

  Widget _buildTextField(String label, {bool obscureText=false,required TextEditingController controller}) {

     return TextField(
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        labelText: label,
        border: OutlineInputBorder()
      ),
     );

  }


