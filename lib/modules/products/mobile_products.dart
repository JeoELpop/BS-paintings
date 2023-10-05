// ignore_for_file: must_be_immutable

import 'dart:ui';
import 'package:bs/modules/contact/contact_screen.dart';
import 'package:bs/modules/main_home/main_home.dart';
import 'package:bs/shared/components.dart';
import 'package:bs/shared/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:url_launcher/url_launcher.dart';

class MobileProducts extends StatefulWidget {
  MobileProducts({super.key, required this.title});

  final String title;
  


void openURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url, forceSafariVC: false);
    } else {
      throw 'Could not launch $url';
    }
  }

 var scaffoldKey = GlobalKey<ScaffoldState>();


  static String id = 'MobileProducts';

  @override
  State<MobileProducts> createState() => _MobileProductsState();
}

List<PaintModel> paints = [
  PaintModel(
    id: 1,
    name: 'Sija(سيجا)',
    prices: 85.0,
    Describtion:
        'منتج دهانات عالي الجودة والذي يتميز بالمتانة والمقاومة للعوامل الخارجية مثل الرطوبة \n والحرارة والأشعة فوق البنفسجية\n كما يتميز بسهولة التطبيق والتغطية العالية للأسطح المختلفة',
  ),
  PaintModel(
    id: 2,
    name: 'Sija Plus(سيجا بلس)',
    prices: 85.0,
    Describtion:
        'منتج دهانات عالي الجودة والذي يتميز بالمتانة والمقاومة للعوامل الخارجية مثل الرطوبة \n والحرارة والأشعة فوق البنفسجية\n كما يتميز بسهولة التطبيق والتغطية العالية للأسطح المختلفة',
  ),
  PaintModel(
    id: 3,
    name: 'Sija Smoke(سيجا دخان)',
    prices: 85.0,
    Describtion:
        'منتج دهانات عالي الجودة والذي يتميز بالمتانة والمقاومة للعوامل الخارجية مثل الرطوبة \n والحرارة والأشعة فوق البنفسجية\n كما يتميز بسهولة التطبيق والتغطية العالية للأسطح المختلفة',
  ),
  PaintModel(
    id: 4,
    name: 'Metallic(ميتاليك)',
    prices: 85.0,
    Describtion:
        'منتج دهانات عالي الجودة والذي يتميز بالمتانة والمقاومة للعوامل الخارجية مثل الرطوبة \n والحرارة والأشعة فوق البنفسجية\n كما يتميز بسهولة التطبيق والتغطية العالية للأسطح المختلفة',
  ),
  PaintModel(
    id: 5,
    name: 'Stucco(ستوكو)',
    prices: 85.0,
    Describtion:
        'منتج دهانات عالي الجودة والذي يتميز بالمتانة والمقاومة للعوامل الخارجية مثل الرطوبة \n والحرارة والأشعة فوق البنفسجية\n كما يتميز بسهولة التطبيق والتغطية العالية للأسطح المختلفة',
  ),
  PaintModel(
    id: 6,
    name: 'Soli(سواحيلي)',
    prices: 85.0,
    Describtion:
        'منتج دهانات عالي الجودة والذي يتميز بالمتانة والمقاومة للعوامل الخارجية مثل الرطوبة \n والحرارة والأشعة فوق البنفسجية\n كما يتميز بسهولة التطبيق والتغطية العالية للأسطح المختلفة',
  ),
  PaintModel(
    id: 7,
    name: 'Reflisi(ريفليزي)',
    prices: 85.0,
    Describtion:
        'منتج دهانات عالي الجودة والذي يتميز بالمتانة والمقاومة للعوامل الخارجية مثل الرطوبة \n والحرارة والأشعة فوق البنفسجية\n كما يتميز بسهولة التطبيق والتغطية العالية للأسطح المختلفة',
  ),
  PaintModel(
    id: 8,
    name: 'Flower(فلاور)',
    prices: 85.0,
    Describtion:
        'منتج دهانات عالي الجودة والذي يتميز بالمتانة والمقاومة للعوامل الخارجية مثل الرطوبة \n والحرارة والأشعة فوق البنفسجية\n كما يتميز بسهولة التطبيق والتغطية العالية للأسطح المختلفة',
  ),
];

  var scaffoldKey = GlobalKey<ScaffoldState>();
  bool isButtonPressed = false;

  void openURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url, forceSafariVC: false);
    } else {
      throw 'Could not launch $url';
    }
  }


class _MobileProductsState extends State<MobileProducts> {
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
                                      Navigator.pushNamed(context, MainHomePage.id);
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
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [0.0, 0.5, 1.0],
            colors: [
              Color.fromARGB(255, 84, 188, 236),
              Colors.red,
              Colors.orange
            ],
          ),
          // image: DecorationImage(
          //   image: AssetImage('images/back.png'),
          //   fit: BoxFit.cover,
          // ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
              child: Container(
                color: Colors.black.withOpacity(0.3),
                child: Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      height:
                          540, // Set the desired height for the horizontal list
                      child: ListView.separated(
                        itemCount: paints
                            .length, // Adjust the number of items as needed
                        itemBuilder: (context, index) =>
                            buildcomponentitem(paints[index]),
                        separatorBuilder: (context, index) => SizedBox(
                          width: 20,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildcomponentitem(PaintModel paint) => InkWell(
        onTap: () {
          currentPaint = paint.name;
          currentPaintID = paint.id;

          // Navigator.popAndPushNamed(context, WorkSpaceScreen.id);
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Container(
            width: 600,
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.6),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                   Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                     children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            '${paint.name}',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w900,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            '${paint.prices}\$',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w900,
                              color: Color.fromARGB(255, 34, 236, 41),
                            ),
                          ),
                        ],
                      ),
                          SizedBox(
                            width: 5,
                          ),
                          Container(
                        height: 100,
                        width: 80,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                'images/tray.png',
                              ),
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(20))),
                  ),
                     ],
                   ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        textAlign: TextAlign.end,
                        '${paint.Describtion}',
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.white,
                        ),
                        maxLines: 4,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 30,
                  ),
                ],
              ),
            ),
          ),
        ),
      );
}
