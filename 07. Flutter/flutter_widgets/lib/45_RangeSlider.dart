import 'package:flutter/material.dart';

class RangeSliderExample extends StatefulWidget {
  const RangeSliderExample({super.key});

  @override
  State<RangeSliderExample> createState() => _RangeSliderExampleState();
}

class _RangeSliderExampleState extends State<RangeSliderExample> {

  RangeValues values = const RangeValues(0, 100);

  @override
  Widget build(BuildContext context) {

    RangeLabels labels = RangeLabels(values.start.toString(), values.end.toString());

    return Scaffold(
      appBar: AppBar(
        title: const Text('Range Slider Example'),
      ),
      body: Center(
        child: RangeSlider(
          values: values,
          labels: labels,
          divisions: 10,
          activeColor: Colors.orange,
          inactiveColor: Colors.orange[100],
          min: 0,
          max: 100,
          onChanged: (newValue){
            values = newValue;
            print('${newValue.start}, ${newValue.end}');
            setState(() {
              
            });
          },
        ),
      ),
    );
  }
}