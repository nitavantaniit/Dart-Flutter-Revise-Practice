import 'package:flutter/material.dart';

class BMIapp extends StatefulWidget {
  const BMIapp({super.key});

  @override
  State<BMIapp> createState() => _BMIappState();
}

class _BMIappState extends State<BMIapp> {

  var wtcontroller = TextEditingController();
  var ftcontroller = TextEditingController();
  var incontroller = TextEditingController();

  var result = "";
  var bgcolor = Colors.cyan[200];
  var txtcolor = Colors.black;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI App'),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xff2af598),Color(0xff009efd)
            ],
            begin: FractionalOffset(0.5,1.0),
            end: FractionalOffset(0.5, 0.0)
          )
        ),
        child: Center(
          child: SizedBox(
            width: 300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
          
                Text('BMI', style: TextStyle(
                  fontSize: 34,
                  fontWeight: FontWeight.w700,
                  color: Colors.brown.shade700,
                ),),
          
                const SizedBox(height: 25,),
          
                TextField(
                  controller: wtcontroller,
                  decoration: InputDecoration(
                    label: const Text('Enter Your Weight'),
                    prefixIcon: const Icon(Icons.line_weight),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11)
                    )
                  ),
                  keyboardType: TextInputType.number,
                ),
          
                const SizedBox(height: 11,),
          
                TextField(
                  controller: ftcontroller,
                  decoration: InputDecoration(
                    label: const Text('Enter Your Height (feet)'),
                    prefixIcon: const Icon(Icons.height),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11)
                    )
                  ),
                  keyboardType: TextInputType.number,
                ),
          
                const SizedBox(height: 11,),
                
                TextField(
                  controller: incontroller,
                  decoration: InputDecoration(
                    label: const Text('Enter Your Height (Inches)'),
                    prefixIcon: const Icon(Icons.height_rounded),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11)
                    )
                  ),
                  keyboardType: TextInputType.number,
                ),
      
                const SizedBox(height: 11,),
      
                ElevatedButton(onPressed: () {
      
                  var wt = wtcontroller.text.toString();
                  var ft = ftcontroller.text.toString();
                  var inch = incontroller.text.toString();
      
                  if(wt!="" && ft!="" && inch!=""){
      
                    //BMI CAlculation
      
                    var iWt = int.parse(wt);
                    var iFt = int.parse(ft);
                    var iInch = int.parse(inch);
      
                    var tInch = (iFt*12) + iInch;
      
                    var tCm = tInch*2.54;
      
                    var tM = tCm/100;
      
                    var bmi = iWt/(tM*tM);

                    var msg = "";

                    if(bmi>25){
                      msg = 'You are Overweight!!';
                      txtcolor = Colors.red.shade900;
                      bgcolor = Colors.red.shade100;
                    } else if(bmi<18){
                      msg = 'You are Underweight!!';
                      txtcolor = Colors.orange.shade900;
                      bgcolor = Colors.orange.shade100;

                    }else {
                      msg = 'You are Healthy!!';
                      txtcolor = Colors.green.shade900;
                      bgcolor = Colors.green.shade100;

                    }
      
                    setState(() {
                      result = "$msg \n Your BMI is: ${bmi.toStringAsFixed(2)}";
                    });
      
                  } else {
                    setState(() {
                      result = 'Please fill all the required blanks!! ';
                    });
                  }
      
                }, child: const Text('Calculate'),),
      
                const SizedBox(height: 11,),
      
                Text(result, style: TextStyle(fontSize: 21, color: txtcolor), )
              ],
            ),
          ),
        ),
      ),
    );
  }
}