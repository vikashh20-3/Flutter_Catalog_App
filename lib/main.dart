import 'package:flutter/material.dart';
import 'package:third/login_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:third/utils/routes.dart';
import 'homepage.dart';

void main() {
  runApp(new Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: homepage(),
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        primarySwatch: Colors.cyan,
        fontFamily: GoogleFonts.lato().fontFamily,
      ),

      routes: {
        "/": (context) => loginpage(),
        MyRoutes.homepageroute: (context) => homepage(),
        MyRoutes.loginroute: (context) => loginpage(),
      },
    );
  }
}
