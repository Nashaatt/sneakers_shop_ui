import 'package:flutter/material.dart';
import 'package:modern_smart_home_ui/Sneakers%20Shop%20Ui/models/cart.dart';
import 'package:provider/provider.dart';

import '../components/showTile.dart';
import '../models/shoe.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({Key? key}) : super(key: key);

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {

  // add Show To Cart
  void addShoeToCart(Shoe shoe) {
    Provider.of<Cart>(context , listen: false).addItemCart(shoe);
    
    // alert user that added to cart
    showDialog(context: context, builder: (context) => const AlertDialog(
      title: Text("Successfully added" , style: TextStyle(color: Colors.white),),
      backgroundColor: Colors.black54,
      icon: Icon(Icons.verified_sharp , size: 40,),
      iconColor: Colors.green,
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(builder: (context, value, child) => Column(
      children: [
        // search Bar
        Container(
          padding: const EdgeInsets.all(12),
          margin: const EdgeInsets.symmetric(horizontal: 25),
          decoration: BoxDecoration(
            color: Colors.grey[100],
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                "Search",
                style: TextStyle(color: Colors.grey),
              ),
              Icon(
                Icons.search,
                color: Colors.grey,
              ),
            ],
          ),
        ),

        // message
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 25.0),
          child: Text(
            "everyone flies . some fly longer than other",
            style: TextStyle(
              color: Colors.grey[600],
            ),
          ),
        ),

        //hot pics
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: const [
              Text(
                "Hot Pics ",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 24.0),
              ),
              Text(
                "see all",
                style: TextStyle(
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ),

        const SizedBox(
          height: 15.0,
        ),

        // List of pics
        Expanded(
          child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: 4,
            itemBuilder: (context , index)
            {
              // get a shoe from shop list
              Shoe shoe = value.getShoeList()[index];

              // return a
              return ShowTile(
                  shoe: shoe,
                  onTap: () => addShoeToCart(shoe),
              );
            },
          ),
        ),

        // Divider
        const Padding(
          padding: EdgeInsets.only(top: 25.0 , left: 25 , right: 25),
          child: Divider(
            color: Colors.black,
          ),
        ),
      ],
    ),
    );
  }
}
