import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(left: 20),
              height: 200,
              width: 200,
              child: Image.asset('assets/images/login_white.jpeg'),
            ),
            Container(
              margin: const EdgeInsets.only(left: 20),
              child: const Text(
                "Welcome Back!",
                style: TextStyle(
                    fontFamily: 'Gelion', fontSize: 30, color: Colors.black),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 20),
              child: const Text(
                "Make it work,make it right,make it fast",
                style: TextStyle(
                    fontFamily: 'Gelion', fontSize: 15, color: Colors.black),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20, top: 10),
              child: const TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.mail),
                    label: Text(
                      'E-Mail',
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
                    prefixIcon: const Icon(Icons.password),
                    label: const Text(
                      'Password',
                      style: TextStyle(fontFamily: "Gelion"),
                    ),
                    border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(4.0)))),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 25, bottom: 25),
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Forgot Password?",
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                )
              ],
            ),
            Center(
              child: TextButton(
                onPressed: () {
                  setState(() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const HomeScreen()),
                    );
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
                      'Login',
                      style:
                          TextStyle(color: Colors.white, fontFamily: 'Gelion'),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
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
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const HomeScreen()),
                    );
                  });
                },
                child: Container(
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
                          style: TextStyle(
                              color: Colors.black, fontFamily: 'Gelion'),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Dont Have An Account?",
                  style: TextStyle(
                      color: Colors.black, fontSize: 15, fontFamily: 'Gelion'),
                ),
                TextButton(
                    onPressed: () {},
                    child: const Text(" Signup",
                        style: TextStyle(
                            color: Colors.blue,
                            fontSize: 15,
                            fontFamily: 'Gelion')))
              ],
            )
          ],
        ),
      ),
    );
  }
}
