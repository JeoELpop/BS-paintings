import 'dart:ui';
import 'package:bs/modules/aboutus/aboutus_screen.dart';
import 'package:bs/modules/contact/contact_screen.dart';
import 'package:bs/modules/home/homepage.dart';
import 'package:bs/shared/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:lottie/lottie.dart';

class MainHomePage extends StatefulWidget {
  const MainHomePage({super.key});

  static String id = 'MainHomePage';

  @override
  State<MainHomePage> createState() => _MainHomePageState();
}

class _MainHomePageState extends State<MainHomePage> {
  bool isButtonPressed = false;

  var scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0),
        child: AppBar(
          backgroundColor: Colors.grey.withOpacity(0),
          flexibleSpace: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                stops: [0.0, 0.5, 1.0],
                colors: [
                  Colors.grey.withOpacity(0.7),
                  Colors.grey.withOpacity(0.4),
                  Colors.grey.withOpacity(0.1)
                ],
              ),
            ),
          ),
          centerTitle: true,
          elevation: 0.5,
          leading: IconButton(
            icon: CircleAvatar(
              backgroundColor: Colors.grey.withOpacity(0),
              radius: 15,
              child: Icon(
                Icons.menu,
                color: Colors.black,
                size: 30,
              ),
            ),
            onPressed: () {
              if (isButtonPressed) {
                Navigator.pop(context);
        
                setState(() {
                  isButtonPressed = false;
                });
              } else {
                setState(() {
                  isButtonPressed = true;
                });
        
                scaffoldKey.currentState?.showBottomSheet(
                  backgroundColor: Colors.grey.withOpacity(0.3),
                  transitionAnimationController: AnimationController(
                    vsync: Navigator.of(context),
                    duration: Duration(milliseconds: 500),
                  ),
                  constraints: BoxConstraints(
                    maxHeight: double.infinity,
                    minHeight: 100,
                  ),
                  enableDrag: false,
                  (context) => Container(
                    alignment: Alignment.topLeft,
                    color: Colors.grey.withOpacity(0),
                    child: Container(
                      height: double.infinity,
                      color: Colors.grey.withOpacity(0.2),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              TextButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, HomePage.id);
                                },
                                child: Text(
                                  'Home',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              TextButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, AboutUs.id);
                                },
                                child: Text(
                                  'About Us',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              TextButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, Contact.id);
                                },
                                child: Text(
                                  'Contact Us',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              TextButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, Contact.id);
                                },
                                child: Text(
                                  'Branches',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              }
            },
          ),
          title: IconButton(
            iconSize: 60,
            icon: CircleAvatar(
              radius: 30,
              backgroundColor: Colors.grey.withOpacity(0),
              backgroundImage: AssetImage('images/logo.png'),
            ),
            onPressed: () {
              Navigator.pushNamed(context, MainHomePage.id);
            },
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              stops: [0.0, 0.5, 1.0],
              colors: [
                Colors.grey.withOpacity(0.7),
                Colors.grey.withOpacity(0.4),
                Colors.grey.withOpacity(0.1)
              ],
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 50,
              ),
              Container(
                width: double.infinity,
                height: 500,
                margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                decoration: 
                ShapeDecoration(shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                                color: Colors.black.withOpacity(0.2),
                                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.white70,
                          radius: 100,
                          backgroundImage: AssetImage('images/icon.png'),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextButton(
                          style: TextButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            foregroundColor: Colors.grey[500],
                            backgroundColor: Color.fromARGB(255, 5, 34, 78),
                            padding: const EdgeInsets.all(16.0),
                            textStyle: const TextStyle(fontSize: 16),
                          ),
                          onPressed: () {
                            if (isButtonPressed) {
                              Navigator.pop(context);
              
                              setState(() {
                                isButtonPressed = false;
                              });
                            } else {
                              setState(() {
                                isButtonPressed = true;
                              });
              
                              scaffoldKey.currentState?.showBottomSheet(
                                backgroundColor: Colors.grey,
                                transitionAnimationController:
                                    AnimationController(
                                  vsync: Navigator.of(context),
                                  duration: Duration(milliseconds: 500),
                                ),
                                enableDrag: false,
                                (context) => Container(
                                  width: double.infinity,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      SizedBox(
                                        height: 20,
                                      ),
                                      TextButton(
                                        onPressed: () {
                                          Navigator.pushNamed(
                                              context, HomePage.id);
                                        },
                                        child: Text(
                                          'Home',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20.0,
                                            fontWeight: FontWeight.w900,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      TextButton(
                                        onPressed: () {
                                          Navigator.pushNamed(
                                              context, AboutUs.id);
                                        },
                                        child: Text(
                                          'About Us',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20.0,
                                            fontWeight: FontWeight.w900,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      TextButton(
                                        onPressed: () {
                                          Navigator.pushNamed(
                                              context, Contact.id);
                                        },
                                        child: Text(
                                          'Contact Us',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20.0,
                                            fontWeight: FontWeight.w900,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      TextButton(
                                        onPressed: () {
                                          Navigator.pushNamed(
                                              context, Contact.id);
                                        },
                                        child: Text(
                                          'Branches',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20.0,
                                            fontWeight: FontWeight.w900,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            }
                          },
                          child:  Text(
                            'Get Started',
                            style: TextStyle(
                              color: Colors.grey.shade300,
                              fontSize: 20.0,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      child: Lottie.network(
                        "https://lottie.host/635051c8-26bc-499a-8fc7-cbf20a72888c/UYgFlQmlHc.json",
                        animate: true,
                        height: 250,
                        width: 250,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 250,
              ),
              Container(
                width: double.infinity,
                margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                decoration: 
                ShapeDecoration(shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                                color: Colors.blueGrey,
                                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                     Column(
                              children: [
                                Text(
                                  'News',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 35,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                              ],
                            ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.blue.withOpacity(0.2),

                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Image(
                                            image: AssetImage('images/images (3).png')),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        'Our New Products and Offers are here \nHurry Up And Buy It Now \nLimited Time Offer',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.black,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.blue.withOpacity(0.2),

                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Image(
                                            image: AssetImage('images/images (3).png')),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        'Our New Products and Offers are here \nHurry Up And Buy It Now \nLimited Time Offer',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.black,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.blue.withOpacity(0.2),

                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Image(
                                            image: AssetImage('images/images (3).png')),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        'Our New Products and Offers are here \nHurry Up And Buy It Now \nLimited Time Offer',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.black,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.blue.withOpacity(0.2),

                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Image(
                                            image: AssetImage('images/images (3).png')),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        'Our New Products and Offers are here \nHurry Up And Buy It Now \nLimited Time Offer',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.black,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.blue.withOpacity(0.2),

                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Image(
                                            image: AssetImage('images/images (3).png')),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        'Our New Products and Offers are here \nHurry Up And Buy It Now \nLimited Time Offer',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.black,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.blue.withOpacity(0.2),

                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Image(
                                            image: AssetImage('images/images (3).png')),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        'Our New Products and Offers are here \nHurry Up And Buy It Now \nLimited Time Offer',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.black,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.blue.withOpacity(0.2),

                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Image(
                                            image: AssetImage('images/images (3).png')),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        'Our New Products and Offers are here \nHurry Up And Buy It Now \nLimited Time Offer',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.black,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              
                            ]),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(bottom: 50),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 100,
                      ),
                      Image(image: AssetImage('images/GG.png')),
                      SizedBox(
                        width: 100,
                      ),
                      Image(image: AssetImage('images/GG1.png')),
                      SizedBox(
                        width: 100,
                      ),
                      Image(image: AssetImage('images/GG2.png')),
                      SizedBox(
                        width: 100,
                      ),
                      Image(image: AssetImage('images/GG3.png')),
                      SizedBox(
                        width: 100,
                      ),
                      Image(
                        image: AssetImage('images/interior.png'),
                      ),
                      SizedBox(
                        width: 100,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                height: 200,
                color: Colors.black87,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Text(
                              'STAY IN TOUCH',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Text(
                              'HOME',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(
                              height: 120,
                            ),
                            Text('All rights reserved to BS™ inc. 2023',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                              ),),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Text(
                              'ABOUT US',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
