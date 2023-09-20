import 'dart:ui';
import 'package:bs/modules/aboutus/aboutus_screen.dart';
import 'package:bs/modules/home/homepage.dart';
import 'package:bs/modules/main_home/main_home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:url_launcher/url_launcher.dart';

class Contact extends StatefulWidget {

  static String id = 'Contact';

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
void openURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url, forceSafariVC: false);
    } else {
      throw 'Could not launch $url';
    }
  }

   bool isButtonPressed = false;

   var scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       key: scaffoldKey,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0),
        child: AppBar(
            backgroundColor: Colors.grey.withOpacity(0.4),
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
                    // Color(0xffb9a57a),
                    // Color(0xffcbbc9c),
                    // Color(0xffdcd2bd),
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
                    backgroundColor: Colors.black.withOpacity(0.3),
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
                      color: Colors.white.withOpacity(0),
                      child: Container(
                        height: double.infinity,
                        color: Colors.white.withOpacity(0.1),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Container(
                                  width: 145,
                                  alignment: Alignment.centerLeft,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: TextButton(
                                    onPressed: () {
                                      Navigator.pushNamed(context, HomePage.id);
                                    },
                                    child: Row(
                                      children: [
                                        Icon(Icons.arrow_right_rounded,
                                  color: Colors.black,),
                                        Text(
                                          'Home',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 20.0,
                                            fontWeight: FontWeight.w900,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                              Container(
                                  width: 145,
                                  alignment: Alignment.centerLeft,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: TextButton(
                                    onPressed: () {
                                     Navigator.pushNamed(context, Contact.id);
                                    },
                                    child: Row(
                                      children: [
                                        Icon(Icons.arrow_right_rounded,
                                  color: Colors.black,),
                                        Text(
                                          'Contact Us',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 20.0,
                                            fontWeight: FontWeight.w900,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  width: 145,
                                  alignment: Alignment.centerLeft,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: TextButton(
                                    onPressed: () {
                                     Navigator.pushNamed(context, Contact.id);
                                    },
                                    child: Row(
                                      children: [
                                        Icon(Icons.arrow_right_rounded,
                                  color: Colors.black,),
                                        Text(
                                          'Catalouges',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 20.0,
                                            fontWeight: FontWeight.w900,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  width: 145,
                                  alignment: Alignment.centerLeft,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: TextButton(
                                    onPressed: () {
                                     Navigator.pushNamed(context, Contact.id);
                                    },
                                    child: Row(
                                      children: [
                                        Icon(Icons.arrow_right_rounded,
                                  color: Colors.black,),
                                        Text(
                                          'Branches',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 20.0,
                                            fontWeight: FontWeight.w900,
                                          ),
                                        ),
                                      ],
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
            actions: [
              IconButton(
                iconSize: 60,
                icon: CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.grey.withOpacity(0),
                  child: Icon(Icons.phone),
                ),
                onPressed: () {
                  openURL('https://wa.me/+201063843981?text=Hello');
                  // openURL('https://www.youtube.com/');
                },
              ),
              IconButton(
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
            ]),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/back.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ClipRRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
              child: Container(
                color: Colors.black.withOpacity(0.3),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(25),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 100,
                          ),
                          Column(
                            children: [
                              Container(
                                padding: EdgeInsets.only(left: 0),
                                child: Row(
                                  children: [
                                    Text(
                                      'Contact Us At',
                                      style: TextStyle(
                                          fontSize: 25,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Divider(
                            color: Colors.white,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              TextButton(
                                onPressed: () {},
                                child: Text(
                                  'Email: Example@Hotmail.com',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                '  Phone: 01000000000',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                '  Phone: 01100000000',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                '  Address: Qaliobia ElKanater ElKhayria , cairo',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                '  Address: Madinty , cairo',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                            ],
                          ),
                          Divider(
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
