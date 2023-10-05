import 'package:bs/modules/main_home/desktop_main_home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

// ignore: must_be_immutable
class DesktopNewsPage extends StatelessWidget {
 
 List<NewsModel> news = [
  NewsModel(image:'images/images (3).png', body: 'Our New Products and Offers are here \nHurry Up And Buy It Now \nLimited Time Offer'),
  NewsModel(image:'images/images (3).png', body: 'Our New Products and Offers are here \nHurry Up And Buy It Now \nLimited Time Offer'),
  NewsModel(image:'images/images (3).png', body: 'Our New Products and Offers are here \nHurry Up And Buy It Now \nLimited Time Offer'),
];


static String id = 'DesktopNewsPage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('News'),
        backgroundColor: Colors.grey,
      ),
      body: ListView.builder(
        itemCount: news.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey[300],
              ),
              height: 300,
              child: Row(
                children: [
                  SizedBox(width: 25,),
                  Image.asset(news[index].image),
                  SizedBox(width: 25,),
                  Text(news[index].body,
                  style: TextStyle(
                    fontSize: 20,
                  ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}