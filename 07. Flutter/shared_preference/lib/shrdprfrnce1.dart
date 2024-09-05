import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferenceExample extends StatefulWidget {
  const SharedPreferenceExample({super.key});

  @override
  State<SharedPreferenceExample> createState() => _SharedPreferenceExampleState();
}

class _SharedPreferenceExampleState extends State<SharedPreferenceExample> {

  var nameController = TextEditingController();

  static const String KEYNAME = "name";

  var nameValue = "No Value Saved";

  @override
  void initState() {
    super.initState();
    getValue();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shared Preference'),
      ),
      body: Container(
        child: Center(
          child: SizedBox(
            width: 200,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  controller: nameController,
                  decoration: InputDecoration(
                    label: const Text('Name'),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                      )
                  ),
                ),
        
                const SizedBox(height: 11,),
        
                ElevatedButton(onPressed: () async {
                  // var name = ;

                  // var name = nameController.text.toString();

                  var prefs = await SharedPreferences.getInstance();

                  prefs.setString(KEYNAME, nameController.text.toString());
                  

                }, child: const Text('Save')),
        
                const SizedBox(height: 11,),
        
                Text(nameValue)
              ],
            ),
          ),
        ),
      ),
    );
  }
  
  void getValue() async {

    var prefs = await SharedPreferences.getInstance();

   var getName = prefs.getString(KEYNAME);

   nameValue = getName ?? "No Value Saved";

   setState(() {
     
   });
  }
}