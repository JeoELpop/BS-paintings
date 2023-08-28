import 'dart:ui';
import 'package:bs/modules/aboutus/aboutus_screen.dart';
import 'package:bs/modules/contact/contact_screen.dart';
import 'package:bs/modules/home/homepage.dart';
import 'package:bs/shared/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MainHomePage extends StatefulWidget {
  const MainHomePage({super.key});
  
  static String id = 'MainHomePage';

  @override
  State<MainHomePage> createState() => _MainHomePageState();
}

class _MainHomePageState extends State<MainHomePage> {

  bool isButtonPressed=false;
  
  var scaffoldKey =GlobalKey<ScaffoldState>();

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(50.0),
        child: AppBar(
          backgroundColor: Colors.white70,
          centerTitle: true,
          elevation: 0,
          title: Text('B.S For Paitnings',
            style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w900,
            color: Colors.red,
          )
          ),
          leading: IconButton(
              icon: CircleAvatar(
                backgroundColor: Colors.white70,
                radius: 15,
                child: Icon(
                  Icons.phone,
                  color: Colors.red,
                  size: 30,
                ),
              ),
              onPressed: () {
                Navigator.pushNamed(context, Contact.id);
              },
            ),
     
        actions: [
            IconButton(
              iconSize: 60,
              icon: CircleAvatar(
              radius: 30,
              backgroundColor: Colors.white70,
              backgroundImage:  AssetImage('images/logo.png'),
            ),
              onPressed: () {
                Navigator.pushNamed(context, HomePage.id);
              },
            ),
            // IconButton(
            //   icon: CircleAvatar(
            //     backgroundColor: Colors.orange,
            //     radius: 15,
            //     child: Icon(
            //       Icons.phone,
            //       color: Colors.white,
            //       size: 30,
            //     ),
            //   ),
            //   onPressed: () {
            //     Navigator.pushNamed(context, Contact.id);
            //   },
            // ),
            // SizedBox(
            //     width: 15),
            // IconButton(
            //   icon: CircleAvatar(
            //     backgroundColor: Colors.orange,
            //     radius: 15,
            //     child: Icon(
            //       Icons.person,
            //       size: 30,
            //     ),
            //   ),
            //   onPressed: () {
            //     Navigator.pushNamed(context, AboutUs.id);
            //   },
            // ),
            // SizedBox(
            //     width: 15),
          ],
          ),
      ),
body: SingleChildScrollView(
  child:   Container(  
    width: double.infinity,
  
    color: Colors.white70,
  
    child: Column(
  
      crossAxisAlignment: CrossAxisAlignment.center,
  
      children: [
  
        SizedBox(
  
          height: 100,
  
        ),
  
        CircleAvatar(
  
          backgroundColor: Colors.white70,
  
          radius: 100,
  
          backgroundImage:  AssetImage('images/icon.png'),
  
        ),
  
    
  
        SizedBox(
  
          height: 20,
  
        ),
  
    
  
        TextButton(
  
                                          style: TextButton.styleFrom(
  
                                            shape: RoundedRectangleBorder(
  
                                              borderRadius: BorderRadius.circular(20)
  
                                              ),
  
                                              foregroundColor: Colors.grey[300],
  
                                              backgroundColor: Colors.grey[300],
  
                                              padding: const EdgeInsets.all(16.0),
  
                                              textStyle: const TextStyle(fontSize: 16),
  
                                              ),
  
                                              onPressed: () {
  
    
  
                                                if(isButtonPressed)
  
                                                {
  
                                                  
  
                                                  Navigator.pop(context);
  
                                                 setState(() {
  
                                                   isButtonPressed=false;
  
                                                 });
  
                                                }
  
                                                else
  
                                                {
  
                                                  scaffoldKey.currentState?.showBottomSheet((context)=>
  
                                              Container(
  
                                                width: double.infinity,
  
                                                color:Colors.red ,
  
                                                child: Column(
  
                                                  mainAxisSize: MainAxisSize.min,
  
                                                  children: [
  
                                                    
  
                                                    IconButton(onPressed: () {
  
                                                      Navigator.pushNamed(context, MainHomePage.id);
  
                                                      setState(() {
  
                                                   isButtonPressed=true;
  
                                                 });
  
                                                    }, icon: Icon(Icons.close)),
  
    
  
                                                         SizedBox(
  
                                                           height: 20,
  
                                                       ),
  
                                                    TextButton(
  
                                                      onPressed: () {
  
                                                        Navigator.pushNamed(context, HomePage.id);
  
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
  
                                                        Navigator.pushNamed(context, AboutUs.id);
  
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
  
                                                        Navigator.pushNamed(context, Contact.id);
  
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
  
                                                        Navigator.pushNamed(context, Contact.id);
  
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
  
                                              child: const Text(
  
                                                'Get Started',
  
                                                style: TextStyle(
  
                                                  color: Colors.black,
  
                                                  fontSize: 20.0,
  
                                                  fontWeight: FontWeight.w900,
  
                                                  ),
  
                                                  ),
  
                                                  ),
  
        SizedBox(
  
          height: 250,
  
        ),
  
                                                           Padding(
  
                                                             padding: const EdgeInsetsDirectional.only(bottom: 50),
  
                                                             child: SingleChildScrollView(
  
                                                                scrollDirection: Axis.horizontal,
  
                                                               child: Row(
  
                                                                children: 
  
                                                                [
  
                                                                  SizedBox(
  
                                                                    width: 100,
  
                                                                  ),
  
                                                                  Image(image: AssetImage('images/images (1).png')),
  
                                                                  SizedBox(
  
                                                                    width: 100,
  
                                                                  ),
  
                                                                  Image(image: AssetImage('images/images (2).png')),
  
                                                                  SizedBox(
  
                                                                    width: 100,
  
                                                                  ),
  
                                                                  Image(image: AssetImage('images/images (3).png')),
  
                                                                  SizedBox(
  
                                                                    width: 100,
  
                                                                  ),
  
                                                                  Image(image: AssetImage('images/interior.png')),
  
                                                                  SizedBox(
  
                                                                    width: 100,
  
                                                                  ),
  
                                                                  Image(image: AssetImage(
  
                                                                    'images/download.png'
  
                                                                    ),
  
                                                                    ),
  
                                                                  SizedBox(
  
                                                                    width: 100,
  
                                                                  ),
  
                                                                ],
  
                                                              ),

  
                                                             ),
  
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
                    Text('STAY IN TOUCH',
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
                    Text('HOME',
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
                    Text('ABOUT US',
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



      // body: Container(
      //   color: Colors.white70,
      //   width: double.infinity,
      //   height: double.infinity,
        
      //     child: Padding(
      //       padding: const EdgeInsets.all(20.0),
      //       child: ClipRRect(
      //         borderRadius: BorderRadius.circular(20.0),
      //         child: BackdropFilter(
      //               filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
      //               child: Container(
      //                 color: Colors.black.withOpacity(0.3),
      //                 child: Row(
      //                   children: [
      //                       Expanded(
      //                         child: Padding(
      //                           padding: const EdgeInsets.all(50.0),
      //                           child: CircleAvatar(
      //                                                   radius: 200,
      //                                                   backgroundImage:  AssetImage('images/icon.png'),
                                                        
      //                             ),
      //                         ),
      //                       ),
      //       Expanded(
      //         child: Padding(
      //               padding: const EdgeInsets.symmetric(vertical: 10),
      //               child: Container(
      //                 width: 100,
      //                 height: double.infinity,
      //               decoration: BoxDecoration(
      //               borderRadius: BorderRadius.circular(10),
      //                 ),
      //                 child: Column(
      //                   crossAxisAlignment: CrossAxisAlignment.end,
      //                   children: [
      //                     SizedBox(
      //                     height: 100,
      //                     ),
                          
      //                     InkWell(
      //         onTap: () {
      //           Navigator.pushNamed(context, HomePage.id);
      //         },
      //         child: Padding(
      //           padding: const EdgeInsets.all(10.0),
      //           child: Container(
      //             width: 175,
      //             decoration: BoxDecoration(
      //               borderRadius: BorderRadius.circular(10),
      //               color: Colors.white.withOpacity(0.2),
      //             ),
      //             child: Row(
      //               crossAxisAlignment: CrossAxisAlignment.start,
      //               mainAxisAlignment: MainAxisAlignment.end,
      //               children: [
      //                 Column(
      //                       crossAxisAlignment: CrossAxisAlignment.end,
      //                       children: [
      //                         // Text(
      //                         //   'Products',
      //                         //   style: TextStyle(
      //                         //     fontSize: 25,
      //                         //     fontWeight: FontWeight.w900,
      //                         //     color: Colors.yellowAccent,
      //                         //   ),
      //                         // ),

      //                       StrokeText(
      //     text: 'Products',
      //     textStyle: TextStyle(
      //       fontSize: 25.0,
      //       fontWeight: FontWeight.w900,
      //       color: Colors.white,
      //     ),
      //     strokeColor: Colors.black,
      //     strokeWidth: 3.0,
      //   ),


      //                       ],
      //                 ),
      //                 SizedBox(
      //                       width: 30,
      //                 ),
      //               ],
      //             ),
      //           ),
      //         ),
      //                     ),
      //                     SizedBox(
      //                     height: 20,
      //                     ),
      //                     InkWell(
      //         onTap: () {
      //           Navigator.pushNamed(context, Contact.id);
      //         },
      //         child: Padding(
      //           padding: const EdgeInsets.all(10.0),
      //           child: Container(
      //             width: 175,
      //             decoration: BoxDecoration(
      //               borderRadius: BorderRadius.circular(10),
      //               color: Colors.orange.withOpacity(0.75),
      //             ),
      //             child: Row(
      //               crossAxisAlignment: CrossAxisAlignment.start,
      //               mainAxisAlignment: MainAxisAlignment.end,
      //               children: [
      //                 Column(
      //                       crossAxisAlignment: CrossAxisAlignment.end,
      //                       children: [

      //                         StrokeText(
      //     text: 'Contact Us',
      //     textStyle: TextStyle(
      //       fontSize: 25.0,
      //       fontWeight: FontWeight.w900,
      //       color: Colors.white,
      //     ),
      //     strokeColor: Colors.black,
      //     strokeWidth: 3.0,
      //   ),




      //                         // Text(
      //                         //   'Contact Us',
      //                         //   style: TextStyle(
      //                         //     fontSize: 25,
      //                         //     fontWeight: FontWeight.w900,
      //                         //     color: Colors.white,
      //                         //   ),
      //                         // ),
      //                       ],
      //                 ),
      //                 SizedBox(
      //                       width: 30,
      //                 ),
      //               ],
      //             ),
      //           ),
      //         ),
      //                     ),
      //                     SizedBox(
      //                     height: 20,
      //                     ),

      //                     InkWell(
      //         onTap: () {
      //           Navigator.pushNamed(context, AboutUs.id);
      //         },
      //         child: Padding(
      //           padding: const EdgeInsets.all(10.0),
      //           child: Container(
      //             width: 175,
      //             decoration: BoxDecoration(
      //               borderRadius: BorderRadius.circular(10),
      //               color: Colors.orange.withOpacity(0.75),
      //             ),
      //             child: Row(
      //               crossAxisAlignment: CrossAxisAlignment.start,
      //               mainAxisAlignment: MainAxisAlignment.end,
      //               children: [
      //                 Column(
      //                       crossAxisAlignment: CrossAxisAlignment.end,
      //                       children: [


      //                         StrokeText(
      //     text: 'About Us',
      //     textStyle: TextStyle(
      //       fontSize: 25.0,
      //       fontWeight: FontWeight.w900,
      //       color: Colors.white,
      //     ),
      //     strokeColor: Colors.black,
      //     strokeWidth: 3.0,
      //   ),



      //                         // Text(
      //                         //   'About Us',
      //                         //   style: TextStyle(
      //                         //     fontSize: 25,
      //                         //     fontWeight: FontWeight.w900,
      //                         //     color: Colors.white,
      //                         //   ),
      //                         // ),
      //                       ],
      //                 ),
      //                 SizedBox(
      //                       width: 30,
      //                 ),
      //               ],
      //             ),
      //           ),
      //         ),
      //                     ),

      //                   SizedBox(
      //                     height: 20,
      //                     ),

      //                     InkWell(
      //         onTap: () {
      //           Navigator.pushNamed(context, AboutUs.id);
      //         },
      //         child: Padding(
      //           padding: const EdgeInsets.all(10.0),
      //           child: Container(
      //             width: 175,
      //             decoration: BoxDecoration(
      //               borderRadius: BorderRadius.circular(10),
      //               color: Colors.orange.withOpacity(0.75),
      //             ),
      //             child: Row(
      //               crossAxisAlignment: CrossAxisAlignment.start,
      //               mainAxisAlignment: MainAxisAlignment.end,
      //               children: [
      //                 Column(
      //                       crossAxisAlignment: CrossAxisAlignment.end,
      //                       children: [


      //                         StrokeText(
      //     text: 'Branches',
      //     textStyle: TextStyle(
      //       fontSize: 25.0,
      //       fontWeight: FontWeight.w900,
      //       color: Colors.white,
      //     ),
      //     strokeColor: Colors.black,
      //     strokeWidth: 3.0,
      //   ),



      //                         // Text(
      //                         //   'Branches',
      //                         //   style: TextStyle(
      //                         //     fontSize: 25,
      //                         //     fontWeight: FontWeight.w900,
      //                         //     color: Colors.white,
      //                         //   ),
      //                         // ),
      //                       ],
      //                 ),
      //                 SizedBox(
      //                       width: 30,
      //                 ),
      //               ],
      //             ),
      //           ),
      //         ),
      //                     ),

      //                   ],
      //                 ),
      //               ),
      //             ),
      //       ),
      //                 ],
      //               ),
      //                           ),
      //                           ),   
      //                     ),
      //                 ),
      //                   ),
              