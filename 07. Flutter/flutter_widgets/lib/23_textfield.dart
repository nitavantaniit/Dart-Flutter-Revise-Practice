import 'package:flutter/material.dart';

class TextFieldExample extends StatefulWidget {
  const TextFieldExample({super.key});

  @override
  State<TextFieldExample> createState() => _TextFieldExampleState();
}

class _TextFieldExampleState extends State<TextFieldExample> {
  TextEditingController emailText = TextEditingController();
  TextEditingController emailText2 = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TextField Example'),
      ),
      body: Center(
        child: SizedBox(
          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: emailText,
                // enabled: false,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(21),
                    borderSide: const BorderSide(
                      color: Colors.deepOrange,
                      width: 2
                    )
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(21),
                    borderSide: const BorderSide(
                      color: Colors.cyanAccent,
                      width: 2
                    )
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(21),
                    borderSide: const BorderSide(
                      color: Colors.black45,
                      width: 2
                    )
                  ),
                  suffixText: 'UserName Exists',
                  suffixIcon: IconButton(
                    icon: const Icon(Icons.remove_red_eye, color: Colors.blue,),
                    onPressed: () {
                      
                    },
                  ),
                  prefixIcon: const Icon(Icons.email),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(21),
                    borderSide: const BorderSide(
                      color: Colors.deepOrange
                    )
                  )
                ),
              ),
              Container(height: 11),
              TextField(
                // keyboardType: TextInputType.phone,
                controller: emailText2,
                decoration: InputDecoration(
                  hintText: 'Enter Email2',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(21),
                    borderSide: const BorderSide(
                      color: Colors.deepOrange
                    )
                  )
                ),
              ),
              Container(height: 11),
              TextField(
                controller: password,
                obscureText: true,
                obscuringCharacter: '*',
                decoration: InputDecoration(
                  hintText: 'Enter Password here...',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(21),
                    borderSide: const BorderSide(
                      color: Colors.deepOrange
                    )
                  )
                ),
              ),
              Container(height: 11),
              ElevatedButton(onPressed: () {
                String uEmail = emailText.text.toString();
                String uEmail2 = emailText2.text;
                String uPassword = password.text;

                print('Email: $uEmail, Email2: $uEmail2, Password = $uPassword' );
              }, child: const Text('Login'))
            ],
          ),
        ),
      ),     
    );
  }
}