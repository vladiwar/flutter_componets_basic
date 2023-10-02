

import 'package:flutter/material.dart';

class AppTheme{

  static const Color primary = Color.fromARGB(255, 51, 117, 53);

  static final ThemeData lightTheme = ThemeData.light().copyWith(
        //Color primario
        primaryColor: Colors.indigo,
        //AppBar theme
        appBarTheme: const AppBarTheme(
          color: primary,
          elevation: 0
        ),

        //TextButton
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(primary: primary)
      ),
        ///FloatingActionsButtons
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: primary,
          elevation: 5
      ),
      //elevartedButtonTheme
      elevatedButtonTheme:  ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: primary,
          shape: const StadiumBorder(),
          elevation: 0
        )
      ),

      inputDecorationTheme: const InputDecorationTheme(
        floatingLabelStyle: TextStyle( color: primary),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide( color: primary ),
          borderRadius: BorderRadius.only( bottomLeft: Radius.circular(10), topRight: Radius.circular(10))
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide( color: primary ),
          borderRadius: BorderRadius.only( bottomLeft: Radius.circular(10), topRight: Radius.circular(10))
        ),

        border: OutlineInputBorder(
           borderRadius: BorderRadius.only( bottomLeft: Radius.circular(10), topRight: Radius.circular(10))
        )
      )
      );




  static final ThemeData darkTheme = ThemeData.dark().copyWith(
        //Color primario
        primaryColor: Colors.indigo,
        //AppBar theme
        appBarTheme: const AppBarTheme(
          color: primary,
          elevation: 0
        ),
        scaffoldBackgroundColor: Colors.black
      );

}