import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GridDashboad extends StatelessWidget {
  Items item1 = Items(
    title: "Calender",
    subtitle: "March, Wednesday",
    event: "3 events",
    img: "assets/images/calendar.png"
  );

  Items item2 = Items(
    title: "Groceries",
    subtitle: "Bocali, Apple",
    event: "4 items",
    img: "assets/images/food.png"
  );

  Items item3 = Items(
    title: "Locations",
    subtitle: "Lucy Mao going to Office",
    event: "",
    img: "assets/images/map.png"
  );

  Items item4 = Items(
    title: "Activity",
    subtitle: "Rose favourited your post",
    event: "",
    img: "assets/images/festival.png"
  );

  Items item5 = Items(
    title: "Calender",
    subtitle: "Homework, Design",
    event: "4 Items",
    img: "assets/images/todo.png"
  );

  Items item6 = Items(
    title: "Settings",
    subtitle: "",
    event: "2 Items",
    img: "assets/images/setting.png"
  );

  GridDashboad({super.key});

  @override
  Widget build(BuildContext context) {
    List<Items> myList = [item1, item2, item3, item4, item5, item6];
    var color = 0xff453658;
    return Flexible(
      child: GridView.count(
        childAspectRatio: 1.0,
        padding: const EdgeInsets.only(left: 16, right: 16),
        crossAxisCount: 2,
        crossAxisSpacing: 18,
        mainAxisSpacing: 18,
        children: myList.map((data) {
          return Container(
            decoration: BoxDecoration(
              color: Color(color), borderRadius: BorderRadius.circular(10)
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  data.img,
                  width: 42,
                ),
                const SizedBox(height: 14,),
                Text(
                  data.title,
                  style: GoogleFonts.openSans(
                    textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600
                    ),
                  ),
                ),
                const SizedBox(height: 8,),
                Text(
                  data.subtitle,
                  style: GoogleFonts.openSans(
                    textStyle: const TextStyle(
                      color: Colors.white38,
                      fontSize: 10,
                      fontWeight: FontWeight.w600
                    )
                  ),
                ),
                const SizedBox(height: 14,),
                Text(
                  data.event,
                  style: GoogleFonts.openSans(
                    textStyle: const TextStyle(
                      color: Colors.white70,
                      fontSize: 11,
                      fontWeight: FontWeight.w600
                    )
                  ),
                )
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}

class Items {
  String title;
  String subtitle;
  String event;
  String img;

  Items({required this.title, required this.subtitle, required this.event, required this.img});
}