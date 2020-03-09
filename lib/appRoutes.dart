import 'package:flutter/material.dart';
import './form/loginForm.dart';
import './detailScreen/detailScreen.dart';

appRoutes(){
  return (MaterialApp(
    title: 'Gather Detail App',
    theme: ThemeData(
        // Define the default brightness and colors.
        brightness: Brightness.light,
        primaryColor: Colors.lightBlue[800],
        accentColor: Colors.cyan[600],
      
        // Define the default font family.
        fontFamily: 'Georgia',
        
        //hintColor: Color.fromRGBO(255, 0, 0, 1),

        // Define the default TextTheme. Use this to specify the default
        // text styling for headlines, titles, bodies of text, and more.
        textTheme: TextTheme(
          headline: TextStyle(fontSize: 90.0, fontWeight: FontWeight.bold),
          title: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
          body1: TextStyle(fontSize: 20.0, fontFamily: 'Hind'),
          caption: TextStyle(fontSize: 20.0, fontFamily: 'Hind'),
        ),
        inputDecorationTheme: InputDecorationTheme(
          hintStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
        ),
      )
    ,
    routes: {
      '/': (context) => LoginForm(),
      '/detail': (context) => DetailScreen(),
    },
    initialRoute: '/',
  ));
}
