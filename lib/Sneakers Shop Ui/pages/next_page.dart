import 'package:flutter/material.dart';
import '../components/nav_bar_componnet.dart';
import 'cart_page.dart';
import 'shop_page.dart';

class NextPage extends StatefulWidget {
  const NextPage({Key? key}) : super(key: key);

  @override
  State<NextPage> createState() => _NextPageState();
}

class _NextPageState extends State<NextPage> {

  int _selectedIndex = 0;

  void navigateBottomBar(int index)
  {
    setState(() {
      _selectedIndex = index;
    });
  }

  List<Widget> _pages =
  [
     ShopPage(),
     CartPage(),
  ];


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(
          builder: (context) => Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: IconButton(
              icon: const Icon(Icons.menu , color: Colors.black,),
              onPressed: (){
                Scaffold.of(context).openDrawer();
              },
            ),
          ),
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey[900],
        // logo
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children:
              [
                DrawerHeader(
                  child: Image.asset("icons/Nike-Logo-Transparent.png",),
                ),
                const Divider(
                  color: Colors.grey,
                  indent: 25.0,
                  endIndent: 25,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: ListTile(
                    leading: Icon(Icons.home , color: Colors.white,),
                    title: Text("Home" , style: TextStyle(color: Colors.white),),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: ListTile(
                    leading: Icon(Icons.info , color: Colors.white,),
                    title: Text("About" , style: TextStyle(color: Colors.white),),
                  ),
                ),
              ],
            ),


            const Padding(
              padding: EdgeInsets.only(bottom: 25.0 , left: 8.0),
              child: ListTile(
                leading: Icon(Icons.logout , color: Colors.white,),
                title: Text("Sign Out" , style: TextStyle(color: Colors.white),),
              ),
            ),
          ],
        ),
        // other pages

      ),
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),

      body: _pages[_selectedIndex],
    );
  }
}
