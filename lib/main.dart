import 'package:flutter/material.dart';
import 'package:news_app/MyThemeData.dart';
import 'package:news_app/ui/home/HomeScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: MyThemeData.lightTheme,
      debugShowCheckedModeBanner: false,

      routes: {
        HomeScreen.ROUTE_NAME:(context)=>HomeScreen(),
      },
      initialRoute: HomeScreen.ROUTE_NAME,
    );
  }
}
