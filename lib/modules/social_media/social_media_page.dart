import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class SocialMediaPage extends StatelessWidget {
  const SocialMediaPage({super.key});

  static String id = 'SocialMediaPage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.grey,
        title:
         CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.grey.withOpacity(0),
                  backgroundImage: AssetImage('images/logo.png'),
                ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(          
          children: [
            Container(
              child: Row(
                children: [
                  Icon(Icons.facebook),
                  SizedBox(width: 10,),
                  Text('Facebook'),

                ],
              ),
            ),
            SizedBox(height: 20,),
            Container(
              child: Row(
                children: [
                  Icon(Icons.facebook),
                  SizedBox(width: 10,),
                  Text('Facebook'),

                ],
              ),
            ),
            SizedBox(height: 20,),
            Container(
              child: Row(
                children: [
                  Icon(Icons.facebook),
                  SizedBox(width: 10,),
                  Text('Facebook'),

                ],
              ),
            ),
            SizedBox(height: 20,),
            Container(
              child: Row(
                children: [
                  Icon(Icons.facebook),
                  SizedBox(width: 10,),
                  Text('Facebook'),

                ],
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}