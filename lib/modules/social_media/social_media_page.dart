import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:social_media_flutter/social_media_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialMediaPage extends StatelessWidget {

  static String id = 'SocialMediaPage';
    void openURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url, forceSafariVC: false);
    } else {
      throw 'Could not launch $url';
    }
  }

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
            SizedBox(height: 20,),
            Container(
              child: Row(
                children: [
                  Icon(Icons.facebook,color: Colors.blue
                  ,size: 50,),
                  TextButton(onPressed: (){
                    openURL('https://www.facebook.com/profile.php?id=61551061321074');
                  }
                  , child: Text('https://www.facebook.com/profile.php?id=61551061321074')
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Container(
              child: Row(
                children: [
                  SizedBox(width: 5,),
                   SocialWidget(
    placeholderText: 'https://www.instagram.com/bsb48792023/', //text visible to viewers
    iconData: SocialIconsFlutter.instagram, 
    iconSize: 40, //use the respective social logo
    iconColor: Colors.pink, //(optional, default - grey)
    link: 'https://www.instagram.com/bsb48792023/', //provide the link
    placeholderStyle:
    TextStyle(color: Colors.blue, fontSize: 15), //placeholder text style
),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Container(
              child: Row(
                children: [
                  SizedBox(width: 5,),
                   SocialWidget(
    placeholderText: 'https://www.youtube.com/channel/UCCDTQA358TDL3qrpY6yQ0Bw', //text visible to viewers
    iconData: SocialIconsFlutter.youtube, 
    iconSize: 40, //use the respective social logo
    iconColor: Colors.red, //(optional, default - grey)
    link: 'https://www.youtube.com/channel/UCCDTQA358TDL3qrpY6yQ0Bw', //provide the link
    placeholderStyle:
    TextStyle(color: Colors.blue, fontSize: 15), //placeholder text style
),
                ],
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}