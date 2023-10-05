import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter/src/widgets/framework.dart';
import 'package:social_media_buttons/social_media_button.dart';
import 'package:social_media_buttons/social_media_icons.dart';
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
        title: CircleAvatar(
          radius: 30,
          backgroundColor: Colors.grey.withOpacity(0),
          backgroundImage: AssetImage('images/logo.png'),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: CircleAvatar(
                radius: 100,
                backgroundImage: AssetImage('images/icon.png'),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              'Social Media',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 75,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Icon(
                          Icons.facebook,
                          color: Colors.blue,
                          size: 50,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Colors.blue),
                          ),
                          onPressed: () {
                            openURL(
                                'https://www.facebook.com/profile.php?id=61551061321074');
                          },
                          child: Text(
                            'Go to link',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SocialWidget(
                              placeholderText: '', //text visible to viewers
                              iconData: SocialIconsFlutter.instagram,
                              iconSize: 40, //use the respective social logo
                              iconColor: Colors.pink, //(optional, default - grey)
                              link: '', //provide the link
                              placeholderStyle: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 15), //placeholder text style
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Colors.pink),
                          ),
                          onPressed: () {
                            openURL('https://www.instagram.com/bsb48792023/');
                          },
                          child: Text(
                            'Go to link',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SocialWidget(
                              placeholderText: '', //text visible to viewers
                              iconData: SocialIconsFlutter.youtube,
                              iconSize: 40, //use the respective social logo
                              iconColor: Colors.red, //(optional, default - grey)
                              link: '', //provide the link
                              placeholderStyle: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 15), //placeholder text style
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Colors.red),
                          ),
                          onPressed: () {
                            openURL(
                                'https://www.youtube.com/channel/UCCDTQA358TDL3qrpY6yQ0Bw');
                          },
                          child: Text(
                            'Go to link',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  Expanded(
                    child: Column(
                      children: [
                        SocialMediaButton(
                        iconData: SocialMediaIcons.whatsapp,
                        size: 45,
                        color: Colors.green,),
                        SizedBox(
                          height: 20,
                        ),
                        TextButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Colors.green),
                          ),
                          onPressed: () {
                            openURL(
                                'https://wa.me/201157774378');
                          },
                          child: Text(
                            'Go to link',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
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
