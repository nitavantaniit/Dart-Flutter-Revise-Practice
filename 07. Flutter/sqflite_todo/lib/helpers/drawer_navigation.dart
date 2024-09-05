import 'package:flutter/material.dart';
import 'package:sqflite_todo/screens/home_screen.dart';
import 'package:sqflite_todo/screens/categories_screen.dart';
import 'package:sqflite_todo/screens/todos_by_category.dart';
import 'package:sqflite_todo/services/category_service.dart';

class DrawerNavigation extends StatefulWidget {
  const DrawerNavigation({super.key});

  @override
  State<DrawerNavigation> createState() => _DrawerNavigationState();
}

class _DrawerNavigationState extends State<DrawerNavigation> {
  final List<Widget> _categoryList = [];
  final CategoryService _categoryService = CategoryService();

  @override
  initState() {
    super.initState();
    getAllCategories();
  }

  getAllCategories() async {
    var categories = await _categoryService.readCategories();

    categories.forEach((category) {
      setState(() {
        _categoryList.add(InkWell(
          onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => TodosByCategory(category: category['name']))),
          child: ListTile(
            title: Text(category['name']),
          ),
        ));
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Drawer(
        child: ListView(
          children: <Widget>[
            const UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                  'https://cdn.pixabay.com/photo/2023/11/26/10/04/lord-shiva-8413252_1280.png'
                ),
              ),
              accountName: Text('Shiva'), 
              accountEmail: Text('admin@mahadev'),
              decoration: BoxDecoration(color: Colors.blue),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => const HomeScreen())),
            ),
            ListTile(
              leading: const Icon(Icons.view_list),
              title: const Text('Categories'),
              onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => const CategoriesScreen())),
            ),
            const Divider(),
            Column(
              children: _categoryList,
            )
          ],
        ),
      ),
    );
  }
}