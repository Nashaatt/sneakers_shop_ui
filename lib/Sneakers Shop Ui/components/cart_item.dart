import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../models/cart.dart';
import '../models/shoe.dart';

class CartItem extends StatefulWidget {

  CartItem({Key? key , required this.shoe}) : super(key: key);
  Shoe shoe;

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {

  // removeItemFromCart
  void removeItemFromCart(){
   Provider.of<Cart>(context , listen: false).removeItemCart(widget.shoe);

   // alert that item deleted
   showDialog(context: context, builder: (context) => const AlertDialog(
     title: Text("Successfully deleted" , style: TextStyle(color: Colors.white),),
     backgroundColor: Colors.black54,
     icon: Icon(Icons.verified_sharp , size: 40,),
     iconColor: Colors.redAccent,
   ));
  }

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(8),
      ),
      child: ListTile(
        leading: Image.asset(widget.shoe.imagePath),
        title: Text(widget.shoe.name , style: GoogleFonts.aclonica()),
        subtitle: Text(widget.shoe.price + '\$', style: GoogleFonts.aclonica(fontSize: 16 , color: Colors.red),),
        trailing: IconButton(
            onPressed: removeItemFromCart,
            padding: EdgeInsets.zero,
            icon: Icon(Icons.delete , color: Colors.redAccent,),
        ),
      ),
    );
  }
}
