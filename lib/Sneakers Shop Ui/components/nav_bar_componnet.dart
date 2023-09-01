import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBottomNavBar extends StatefulWidget {
   MyBottomNavBar({Key? key , required this.onTabChange}) : super(key: key);

  void Function(int)? onTabChange;

  @override
  State<MyBottomNavBar> createState() => _MyBottomNavBarState();
}

class _MyBottomNavBarState extends State<MyBottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: GNav(
            color: Colors.grey[400],
            activeColor: Colors.grey.shade900,
            tabActiveBorder: Border.all(color: Colors.white),
            tabBackgroundColor: Colors.grey.shade100,
            mainAxisAlignment: MainAxisAlignment.center,
            tabBorderRadius: 16,
            duration: Duration(milliseconds: 200),
            iconSize: 25,
            onTabChange: widget.onTabChange,
            tabs:
            [
              GButton(icon: Icons.home,),
              GButton(icon: Icons.add_shopping_cart_outlined,),
            ],
          ),
        ),
      ),
    );
  }
}
