import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shared_preference/Shared%20Preference%202/home_screen.dart';
import 'package:shared_preference/Shared%20Preference%202/login_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {

  static const String KEYLOGIN = "login";

  @override
  void initState() {
    super.initState();

    whereToGo();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue,
        child: const Center(
          child: Icon(Icons.account_circle, color: Colors.white, size: 100,),
        ),
      ),
    );
  }
  
  void whereToGo() async {

    var sharedPref = await SharedPreferences.getInstance();

    var isLoggedIn = sharedPref.getBool(KEYLOGIN);

    Timer(const Duration(seconds: 2), () { 
      if(isLoggedIn!=null){
        if(isLoggedIn){
          Navigator.pushReplacement(context, 
            MaterialPageRoute(builder: (context) => const HomeScreen()));
        } else {
          Navigator.pushReplacement(context, 
            MaterialPageRoute(builder: (context) => const LoginScreen()));
        } 
      } else {
        Navigator.pushReplacement(context, 
          MaterialPageRoute(builder: (context) => const LoginScreen()));
      }
    },);
  }
}