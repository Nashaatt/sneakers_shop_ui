import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'next_page.dart';

class SneakersApp extends StatefulWidget {
  const SneakersApp({Key? key}) : super(key: key);

  @override
  State<SneakersApp> createState() => _SneakersAppState();
}

class _SneakersAppState extends State<SneakersApp> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[400],
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:
              [
                // logo
                Padding(
                  padding: const EdgeInsets.only(bottom: 25.0),
                  child: Image.asset("icons/nikeshoe.png" , height: 300,),
                ),

                const SizedBox(height: 40.0,),
                //title
                 Text(
                  'Just Do It',
                  style: GoogleFonts.acme(fontSize: 25),
                ),

                const SizedBox(height: 20.0,),

                //sub title
                const Text(
                  'Brand new sneakers and a custom kicks made with premium quality',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.white60,
                  ),
                  textAlign: TextAlign.center,
                ),

                const SizedBox(height: 40.0,),
                // start button

                GestureDetector(
                  onTap: ()
                  {
                   Navigator.push(context, MaterialPageRoute(builder: (c)=> const NextPage()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[900],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(25.0),
                      child: Center(
                        child: Text(
                            "Shop Now",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
