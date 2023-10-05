import 'dart:ui';
import 'package:bs/modules/aboutus/aboutus_screen.dart';
import 'package:bs/modules/contact/contact_screen.dart';
import 'package:bs/modules/products/products_page.dart';
import 'package:bs/modules/news/responsive_news_layout.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lottie/lottie.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:url_launcher/url_launcher.dart';

class NewsModel
{
  final String image;
  final String body;

  NewsModel({
    required this.image,
    required this.body,
  });
}



class DesktopMainHomePage extends StatefulWidget {

  static String id = 'DesktopMainHomePage';

  @override
  State<DesktopMainHomePage> createState() => _DesktopMainHomePageState();
}

class _DesktopMainHomePageState extends State<DesktopMainHomePage> {
  bool isButtonPressed = false;

  var newsController = PageController();

List<NewsModel> news = [
  NewsModel(image:'images/images (3).png', body: 'Our New Products and Offers are here \nHurry Up And Buy It Now \nLimited Time Offer'),
  NewsModel(image:'images/images (3).png', body: 'Our New Products and Offers are here \nHurry Up And Buy It Now \nLimited Time Offer'),
  NewsModel(image:'images/images (3).png', body: 'Our New Products and Offers are here \nHurry Up And Buy It Now \nLimited Time Offer'),
];


  void openURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url, forceSafariVC: false);
    } else {
      throw 'Could not launch $url';
    }
  }

  ScrollController _scrollController = ScrollController();

  void scrollToTop() {
    _scrollController.animateTo(
      0,
      duration: Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

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
                                      Navigator.pushNamed(context, Products.id);
                                    },
                                    child: Row(
                                      children: [
                                        Icon(Icons.arrow_right_rounded,
                                  color: Colors.black,),
                                        Text(
                                          'Products',
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
                                     Navigator.pushNamed(context, AboutUs.id);
                                    },
                                    child: Row(
                                      children: [
                                        Icon(Icons.arrow_right_rounded,
                                  color: Colors.black,),
                                        Text(
                                          'About Us',
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
                  Navigator.pushNamed(context, DesktopMainHomePage.id);
                },
              ),
            ]),
      ),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 50,
              ),
              Container(
                width: double.infinity,
                height: 300,
                margin: const EdgeInsets.only(left: 50.0, right: 50.0),
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
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
                                              context, Products.id);
                                        },
                                        child: Text(
                                          'Products',
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
                          child: Text(
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
                        // "https://lottie.host/d37c66c0-4b71-41c5-98cc-88ff66809289/dcUYBJK1yN.json",
                        "https://lottie.host/f55e7660-bbeb-4f0a-af43-514d19d6bf08/yxwkwLyLlI.json",
                        fit: BoxFit.fill,
                        animate: true,
                        height: 250,
                        width: 250,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                width: double.infinity,
                margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  color: Colors.blueGrey.withOpacity(0.9),
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
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                Container(
                                  height: 350,
                                  width: 325,
                                  child: PageView.builder(itemBuilder: (context, index) => buildNewsItem(news[index]),
                                  itemCount: news.length,
                                  controller: newsController,
                                  physics: BouncingScrollPhysics(),
                                  ),
                                ),
                                SizedBox(height: 15,),
                                SmoothPageIndicator(
                              controller: newsController,
                               count: news.length,
                               effect: WormEffect(spacing: 5,
                               activeDotColor: Colors.blue,
                               dotColor: Colors.grey,
                               dotHeight: 15,
                               dotWidth: 7,
                               radius: 10,
                               strokeWidth: 7,
                               type: WormType.thin,
                               ),
                               ),
                              ],
                            ),
                          ),
                        ],
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
                child: CarouselSlider(
                  items: [
                    Image(
                      image: AssetImage('images/GG.png'),
                      fit: BoxFit.cover,
                      ),
                      Image(
                        image: AssetImage('images/GG1.png'),
                      fit: BoxFit.cover,
                      width: double.infinity,),
                      Image(
                        image: AssetImage('images/GG2.png'),
                      fit: BoxFit.cover,
                      width: double.infinity,),
                      Image(
                        image: AssetImage('images/GG3.png'),
                      fit: BoxFit.cover,
                      width: double.infinity,),
                      Image(
                        image: AssetImage('images/interior.png'),
                      fit: BoxFit.cover,
                      width: double.infinity,
                      ),
                  ],
                   options: CarouselOptions(
                    height: 550,
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 3),
                    autoPlayAnimationDuration: Duration(milliseconds: 1500),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    reverse: false,
                    scrollPhysics: NeverScrollableScrollPhysics(),
                    enableInfiniteScroll: true,
                    initialPage: 0,
                    scrollDirection: Axis.horizontal,
                    viewportFraction: 1,
                   )),

              ),
              SizedBox(
                height: 50,
              ),
              Container(
                height: 200,
                color: Colors.black87,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Padding(
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
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Text(
                                    'Home',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 120,
                                  ),
                                  
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
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
                          ),
                        ],
                      ),
                      Expanded(
                        child: Text(
                                      'All rights reserved to BS™ inc. 2023',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                      ),
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
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white.withOpacity(0.7),
        child: Icon(Icons.arrow_upward_outlined,
        color:  Colors.black,   
        ),
        onPressed: () {
          scrollToTop();
        },
      ),
    );
  }
  Widget buildNewsItem(NewsModel model)=>InkWell(
                                onTap: () {
                                  Navigator.pushNamed(context, News.id);
                                },
                                child: Container(
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
                                              image: AssetImage(
                                                  '${model.image}')),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          '${model.body}',
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
                              );
}
