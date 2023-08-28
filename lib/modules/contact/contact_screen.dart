import 'dart:ui';
import 'package:bs/modules/aboutus/aboutus_screen.dart';
import 'package:bs/modules/home/homepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Contact extends StatelessWidget {
  const Contact({super.key});

  static String id = 'Contact';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(40.0),
        child: AppBar(
           leading: IconButton(
            onPressed: () {
                Navigator.pop(context, HomePage.id);
              },
           icon: Icon(Icons.arrow_back_ios),
           ),
          centerTitle: true,
          elevation: 0,
          titleSpacing: 20,
          title: Text('Contact Us',
            style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w900,
            color: Colors.white,
          )
          ),
      // title: CircleAvatar(
      //   radius: 27,
      //   backgroundImage:  AssetImage('images/icon.png'),
      // ),
      flexibleSpace: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  stops: [0.0, 0.5, 1.0],
                  colors: [Color.fromARGB(255, 84, 188, 236),Colors.red ,Colors.orange],
                ),
        ),
        ),
        actions: [
            IconButton(
              icon: CircleAvatar(
                backgroundColor: Colors.orange,
                radius: 15,
                child: Icon(
                  Icons.person,
                  color: Colors.white,
                  size: 30,
                ),
              ),
              onPressed: () {
                Navigator.pushNamed(context, AboutUs.id);
              },
            ),
            SizedBox(
                width: 15),
          ],
          ),
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
                              onPressed: (){
                              },
                        child: Text(
                          'Email: Example@Hotmail.com',
                          style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                          
                        ),
                      )
                      ,
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