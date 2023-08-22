import 'dart:ui';
import 'package:bs/modules/aboutus/aboutus_screen.dart';
import 'package:bs/modules/contact/contact_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  static String id = 'HomePage';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: Text('BS For Paitnings',
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
                Icons.phone,
                color: Colors.white,
                size: 30,
              ),
            ),
            onPressed: () {
              Navigator.pushNamed(context, Contact.id);
            },
          ),
          SizedBox(
              width: 15),
          IconButton(
            icon: CircleAvatar(
              backgroundColor: Colors.orange,
              radius: 15,
              child: Icon(
                Icons.person,
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
                     ),
                    ),   
              ),
          ),
            // gradient: LinearGradient(
            //   colors: [
            //     red,
            //     Colors.purple, // Middle color (50% mix)
            //     blue,
            //   ],
            //   begin: Alignment.centerLeft,
            //   end: Alignment.centerRight,
            //   stops: [0.0, 0.5, 1.0], // Adjust the position of the middle color
            ),
    );
  }
}