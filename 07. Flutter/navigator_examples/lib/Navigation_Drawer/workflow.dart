import 'package:flutter/material.dart';
import 'package:navigator_examples/Navigation_Drawer/drawer_main.dart';

class WorkFlowScreen extends StatelessWidget {
  const WorkFlowScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavigationDrawerExample(),
      appBar: AppBar(
        title: const Text('Workflow'),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      backgroundColor: Colors.green[200],
      body: Center(
        child: Icon(Icons.workspaces_outline, color: Colors.white.withOpacity(0.5), size: 40,),
      ),
    );
  }
}