import 'package:flutter/material.dart';
import 'package:modern_smart_home_ui/Sneakers%20Shop%20Ui/models/cart.dart';
import 'package:modern_smart_home_ui/Sneakers%20Shop%20Ui/pages/home_page.dart';
import 'package:modern_smart_home_ui/Sneakers%20Shop%20Ui/pages/next_page.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  ChangeNotifierProvider(
        create: (context) => Cart(),
        builder: (context , child) => const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: SneakersApp(),
        ),
    );
  }
}


