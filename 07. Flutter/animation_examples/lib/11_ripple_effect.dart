import 'package:flutter/material.dart';

class RippleEffectAnimation2 extends StatefulWidget {
  const RippleEffectAnimation2({super.key});

  @override
  State<RippleEffectAnimation2> createState() => _RippleEffectAnimation2State();
}

class _RippleEffectAnimation2State extends State<RippleEffectAnimation2> with SingleTickerProviderStateMixin {

  late Animation _animation;
  late AnimationController _animationController;
  var listRadius = [150.0, 200.0, 250.0, 300.0, 350.0];

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(vsync: this, duration: const Duration(seconds: 4), lowerBound: 0.5 );
    // _animation = Tween(begin: 0.0, end: 1.0).animate(_animationController);

    _animationController.addListener(() {
      setState(() {
        
      });
      
    });

    _animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ripple Effect Animation'),
      ),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            buildMyContainer(listRadius[0]),
            buildMyContainer(listRadius[1]),
            buildMyContainer(listRadius[2]),
            buildMyContainer(listRadius[3]),
            buildMyContainer(listRadius[4]),
            const Icon(Icons.add_call, color: Colors.white, size: 34,)
          ]
        ),
      ),
    );
  }

  Widget buildMyContainer (radius) {
    return Container(
      width: radius*_animationController.value,
      height: radius*_animationController.value,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.blue.withOpacity(1.0 - _animationController.value)
      ),
    );
  }
}