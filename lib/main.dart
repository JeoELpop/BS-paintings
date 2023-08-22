import 'dart:io';
import 'package:bs/modules/aboutus/aboutus_screen.dart';
import 'package:bs/modules/contact/contact_screen.dart';
import 'package:bs/modules/home/homepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


class MyHttpOverrides extends HttpOverrides{
  @override
  HttpClient createHttpClient(SecurityContext? context){
    return super.createHttpClient(context)
    ..badCertificateCallback = (X509Certificate cert, String host, int port)=> true;
  }
}

void main() {
  HttpOverrides.global = MyHttpOverrides();
 runApp(ProviderScope(child: MyApp()));
}
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BS',
      home: HomePage(title: 'BS For Paitnings',),
  routes: {
    HomePage.id : (context) => HomePage(title: 'BS For Paitnings',),
    AboutUs.id : (context) => AboutUs(),
    Contact.id : (context) => Contact(),  
  },
          );
  }
}

  