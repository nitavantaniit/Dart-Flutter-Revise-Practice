import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();

  void login(String email, password) async {

    try {

      Response response = await post(
        Uri.parse('https://reqres.in/api/login'),
        body: {
          'email' : email,
          'password' : password,
        }
      );

      if(response.statusCode == 200){
        var data = jsonDecode(response.body.toString());
        print(data);
        print('login successfully');
      } else {
        print('failed');
      }
    } catch(e) {
      print(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign up API'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              controller: emailcontroller,
              decoration: const InputDecoration(
                hintText: 'Email'
              ),
            ),
            const SizedBox(height: 20,),
            TextFormField(
              controller: passwordcontroller,
              decoration: const InputDecoration(
                hintText: 'Password'
              ),
            ),
            const SizedBox(height: 40,),
            GestureDetector(
              onTap: () {
                login(emailcontroller.text.toString(), passwordcontroller.text.toString());
              },
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.cyan,
                  borderRadius: BorderRadius.circular(10)
                ),
                child: const Center(child: Text('Login'),),
              ),
            )
          ],
        ),
      ),
    );
  }
}