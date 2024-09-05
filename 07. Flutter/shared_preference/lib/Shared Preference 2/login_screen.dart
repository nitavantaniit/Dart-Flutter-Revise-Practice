import 'package:flutter/material.dart';
import 'package:shared_preference/Shared%20Preference%202/home_screen.dart';
import 'package:shared_preference/Shared%20Preference%202/splash_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  var uNameController = TextEditingController();
  var passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Login')),
      ),
      body: Container(
        child: Center(
          child: SizedBox(
            width: 300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.all(21.0),
                  child: Icon(
                    Icons.account_circle, size: 100, color: Colors.blue,
                  ),
                ),
                TextField(
                  controller: uNameController,
                  decoration: InputDecoration(
                    label: const Text('Email'),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(21)
                    )
                  ),
                ),
                const SizedBox(height: 11,),
                TextField(
                  controller: passController,
                  decoration: InputDecoration(
                    label: const Text('Password'),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(21)
                    )
                  ),
                ),
                const SizedBox(height: 11,),
                ElevatedButton(onPressed: () async {
                  //If Successfully Logged In (Creds are correct)

                  var sharedPref = await SharedPreferences.getInstance();
                  sharedPref.setBool(SplashScreenState.KEYLOGIN, true);

                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const HomeScreen()));
                }, child: const Text('Login'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}