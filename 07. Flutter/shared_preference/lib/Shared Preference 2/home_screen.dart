import 'package:flutter/material.dart';
import 'package:shared_preference/Shared%20Preference%202/login_screen.dart';
import 'package:shared_preference/Shared%20Preference%202/splash_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  void _logout (BuildContext context) async {
    var sharedPref = await SharedPreferences.getInstance();
    sharedPref.remove(SplashScreenState.KEYLOGIN);

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const LoginScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Home')),
      ),
      body: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        color: Colors.blue[100],
        child: Column(
          children: [
            Icon(Icons.home, color: Colors.white.withOpacity(0.5), size: 55,),
            const SizedBox(height: 11,),
            ElevatedButton(onPressed: () {
             return _logout(context);
            }, child: const Text('Logout'))
          ],
        ),
      ),
    );
  }
}