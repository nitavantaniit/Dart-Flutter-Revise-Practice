import 'package:flutter/material.dart';
import 'package:navigator_examples/Tab_bar_Navigation/calls.dart';
import 'package:navigator_examples/Tab_bar_Navigation/chats.dart';
import 'package:navigator_examples/Tab_bar_Navigation/stories.dart';

class MainTabBar extends StatefulWidget {
  const MainTabBar({super.key});

  @override
  State<MainTabBar> createState() => _MainTabBarState();
}

class _MainTabBarState extends State<MainTabBar> with SingleTickerProviderStateMixin {
  late TabController controller;
  late String appBarTitle = 'Chats';

  @override
  void initState() {
    super.initState();

    controller = TabController(length: 3, vsync: this);
    controller.addListener(() {
      setState(() {
        switch (controller.index) {
          case 0:
            appBarTitle = 'Chats';
            break;
          case 1:
            appBarTitle = 'Stories';
            break;
          case 2:
            appBarTitle = 'Calls';
            break;
          default:
            appBarTitle = '';
        }
      });
     });
  }

  @override
  void dispose() {
    controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[900],
        title: Text(appBarTitle),
        centerTitle: true,
        bottom: TabBar(
          controller: controller,
          indicatorColor: Colors.white,
          tabs: const [
            Tab(text: 'Chats', icon: Icon(Icons.chat),),
            Tab(text: 'Stories', icon: Icon(Icons.circle_outlined),),
            Tab(text: 'Calls', icon: Icon(Icons.phone),),
          ],
        ),
      ),
      body: TabBarView(
        controller: controller,
        children: const [
          ChatScreen(),
          StoriesScreen(),
          CallsScreen()
        ],
      ),
    );
  }
}