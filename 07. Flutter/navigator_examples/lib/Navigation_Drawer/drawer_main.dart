import 'package:flutter/material.dart';
import 'package:navigator_examples/Navigation_Drawer/favourites.dart';
import 'package:navigator_examples/Navigation_Drawer/homescreen.dart';
import 'package:navigator_examples/Navigation_Drawer/userscreen.dart';
import 'package:navigator_examples/Navigation_Drawer/workflow.dart';

class NavigationDrawerExample extends StatelessWidget {
  const NavigationDrawerExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            buildHeader(context),
            buildMenuItems(context),
          ],
        ),
      ),
    );
  }
  Widget buildHeader(BuildContext context) => Material(
    color: Colors.blue[700],
    child: InkWell(
      onTap: () {
        Navigator.pop(context);

          Navigator.of(context).push(MaterialPageRoute(
          builder: ((context) => const UserScreen())
                ));
      },
      child: Container(
        padding: EdgeInsets.only(
          top: 24 + MediaQuery.of(context).padding.top,
          bottom: 24
        ),
        child: const Column(
          children: [
            CircleAvatar(
              radius: 52,
              backgroundImage: AssetImage(
                'assets/images/user.png'
              ),
            ),
            SizedBox(height: 12,),
            Text(
              'John Doe',
              style: TextStyle(fontSize: 28, color: Colors.white),
            ),
            Text(
              'johndoe@google.com',
              style: TextStyle(fontSize: 16, color: Colors.white),
            )
          ],
        ),
      ),
    ),
  );

    Widget buildMenuItems(BuildContext context) => Container(
      padding: const EdgeInsets.all(24),
      child: Wrap(
        runSpacing: 16,
        children: [
          ListTile(
            leading: const Icon(Icons.home_outlined),
            title: const Text('Home'),
            onTap: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: ((context) => const HomeScreen())
                ));
            },
          ),
          ListTile(
            leading: const Icon(Icons.favorite_border),
            title: const Text('Favourites'),
            onTap: () {
              // close navigation drawer  before
              Navigator.pop(context);

              Navigator.of(context).push(MaterialPageRoute(
                builder: ((context) => const FavouritesScreen())
                ));
            },
          ),
          ListTile(
            leading: const Icon(Icons.workspaces_outline),
            title: const Text('Work Flow'),
            onTap: () {
              // close navigation drawer  before
              Navigator.pop(context);

              Navigator.of(context).push(MaterialPageRoute(
                builder: ((context) => const WorkFlowScreen())
                ));
            },
          ),
          ListTile(
            leading: const Icon(Icons.update),
            title: const Text('Updates'),
            onTap: () {},
          ),
          const Divider(color: Colors.black54,),
          ListTile(
            leading: const Icon(Icons.account_tree_outlined),
            title: const Text('Plugins'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.notifications_outlined),
            title: const Text('Notifications'),
            onTap: () {},
          ),
        ],
      ),
    );
}