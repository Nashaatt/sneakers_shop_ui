import 'package:flutter/material.dart';
import 'package:modern_smart_home_ui/Sneakers%20Shop%20Ui/components/cart_item.dart';
import 'package:modern_smart_home_ui/Sneakers%20Shop%20Ui/models/cart.dart';
import 'package:provider/provider.dart';

import '../models/shoe.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // heading
            Text(
              "My Cart",
              style: TextStyle(
                fontSize: 25,
                color: Colors.grey[800],
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(
              height: 25,
            ),

            Expanded(
              child: ListView.builder(
                  itemCount: value.getUserCart().length,
                  itemBuilder: (context, index) {
                    Shoe individualShoe = value.getUserCart()[index];

                    return CartItem(shoe: individualShoe);
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
