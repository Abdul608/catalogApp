import 'package:catalog_app/HomePage.dart';
import 'package:catalog_app/LoginPage.dart';
import 'package:catalog_app/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.black),
        ),
        //primaryColor: Colors.deepPurpleAccent,
        primarySwatch: Colors.deepPurple,
      ),
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData(
        brightness: Brightness.light,

       fontFamily: GoogleFonts.lato().fontFamily,
        //primaryTextTheme: GoogleFonts.latoTextTheme(),
      ),
      initialRoute: MyRoutes.homeRoutes,
      routes:{
        '/':(context)=> LoginPage(),
        MyRoutes.homeRoutes:(context)=>HomePage(),
      },
      // theme: ThemeData(
      //   primarySwatch:Colors.cyan,
      //   scaffoldBackgroundColor: Colors.green,
      //   dividerColor: Colors.red,
      // ),
    );
  }
}
