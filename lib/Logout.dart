import 'package:flutter/material.dart';
import 'package:juiceproject/login.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Logoutpage extends StatelessWidget {
  const Logoutpage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 194, 114, 10),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            SharedPreferences pref = await SharedPreferences.getInstance();
            pref.remove("email");
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (_) {
                return Login();
              }),
            );
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.pinkAccent,
             shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  
                ),
                padding: EdgeInsets.all(10.0)
          ),
          child: Text("Logout"),
        ),
      ),
    );
  }
}
