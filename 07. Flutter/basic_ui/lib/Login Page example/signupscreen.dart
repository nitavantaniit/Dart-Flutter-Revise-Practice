import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});
  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool _obscurePassword = true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 200,
                width: 200,
                child: Image.asset('assets/images/login_white.jpeg'),
              ),
              Container(
                margin: const EdgeInsets.only(left: 20),
                child: const Text(
                  "Get On Board!",
                  style: TextStyle(
                      fontFamily: 'Gelion', fontSize: 30, color: Colors.black),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Container(
                margin: const EdgeInsets.only(left: 20),
                child: const Text(
                  "Create your profile to start Your journey",
                  style: TextStyle(
                      fontFamily: 'Gelion', fontSize: 15, color: Colors.black),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                margin: const EdgeInsets.only(left: 20, right: 20),
                child: const TextField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person_2_rounded),
                      label: Text('Full Name',style: TextStyle(fontFamily: "Gelion"),),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(4.0)))),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                margin: const EdgeInsets.only(left: 20, right: 20),
                child: const TextField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.mail_lock_rounded),
                      label: Text('E-Mail',
                        style: TextStyle(fontFamily: "Gelion"),
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(4.0)))),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                margin: const EdgeInsets.only(left: 20, right: 20),
                child: const TextField(
                  keyboardType:  TextInputType.number,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.numbers),
                      label: Text('Phone Number',
                        style: TextStyle(fontFamily: "Gelion"),
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(4.0)))),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                margin: const EdgeInsets.only(left: 20, right: 20),
                child: TextField(
                  obscureText: _obscurePassword,
                  decoration: InputDecoration(
                      suffixIcon: IconButton(
                        icon: Icon(
                          _obscurePassword
                              ? Icons.visibility
                              : Icons.visibility_off,
                        ),
                        onPressed: () {
                          setState(() {
                            _obscurePassword = !_obscurePassword;
                          });
                        },
                      ),
                      prefixIcon: const Icon(Icons.password_rounded),
                      label: const Text('Password',
                        style: TextStyle(fontFamily: "Gelion"),
                      ),
                      border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(4.0)))),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Center(
                child: TextButton(
                  onPressed: () {
                    setState(() {
                    });
                  },
                  child: Container(
                    height: 50,
                    width: 300,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(5)),
                    child: const Center(
                      child: Text(
                        'SIGNUP',
                        style:
                            TextStyle(color: Colors.white, fontFamily: 'Gelion'),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Center(
                  child: Text('OR',
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Gelion',
                          fontSize: 15))),
              const SizedBox(
                height: 10,
              ),
              Center(
                child: TextButton(
                  onPressed: () {
                    setState(() {
                    });
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 50,
                        width: 300,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(5)),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                  margin: const EdgeInsets.only(right: 5),
                                  height: 16,
                                  width: 16,
                                  child: Image.asset('assets/images/google.jpeg')),
                              const Text(
                                
                                'Sign-In-With-Google',
                                style:
                                    TextStyle(color: Colors.black, fontFamily: 'Gelion'),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Already Have An Account?",
                    style: TextStyle(color: Colors.black, fontSize: 15,fontFamily: "Gelion"),
                  ),
                  TextButton
                  (onPressed: (){},
                    child: const Text(" Login",
                        style: TextStyle(color: Colors.blue, fontSize: 15, fontFamily: "Gelion")),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
