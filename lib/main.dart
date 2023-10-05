import 'dart:io';
import 'package:bs/modules/aboutus/aboutus_screen.dart';
import 'package:bs/modules/contact/contact_screen.dart';
import 'package:bs/modules/products/desktop_products.dart';
import 'package:bs/modules/products/mobile_products.dart';
import 'package:bs/modules/products/products_page.dart';
import 'package:bs/modules/main_home/desktop_main_home.dart';
import 'package:bs/modules/main_home/main_home.dart';
import 'package:bs/modules/main_home/mobile_main_home.dart';
import 'package:bs/modules/news/desktop_news_page.dart';
import 'package:bs/modules/news/mobile_news_page.dart';
import 'package:bs/modules/news/responsive_news_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'modules/social_media/social_media_page.dart';

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
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
      
      title: 'B.S',
      home: MainHomePage(MobileMainHomePage: MobileMainHomePage(),DesktopMainHomePage: DesktopMainHomePage(),),
      routes: {
        MainHomePage.id:(context) => MainHomePage(MobileMainHomePage: MobileMainHomePage(),DesktopMainHomePage: DesktopMainHomePage(),),
        Products.id: (context) => Products(
              MobileProducts: MobileProducts(title: 'B.S For Paitnings',),
              DesktopProducts: DesktopProducts(title: 'B.S For Paitnings',),
            ),
        AboutUs.id: (context) => AboutUs(),
        Contact.id: (context) => Contact(),
        News.id: (context) => News( MobileNewsPage: MobileNewsPage(), DesktopNewsPage: DesktopNewsPage(),),
        SocialMediaPage.id: (context) => SocialMediaPage(),
      },
    );
  }
}
