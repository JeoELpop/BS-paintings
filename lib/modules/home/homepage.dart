import 'dart:ui';
import 'package:bs/modules/aboutus/aboutus_screen.dart';
import 'package:bs/modules/contact/contact_screen.dart';
import 'package:bs/shared/components.dart';
import 'package:bs/shared/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HomePage extends StatefulWidget {
   HomePage({super.key, required this.title});

  final String title;

  static String id = 'HomePage';

  @override
  State<HomePage> createState() => _HomePageState();
}

List<PaintModel>  paints = [
    PaintModel(
      id: 1,
      name: 'Sija(سيجا)',
      prices: 85.0,
      Describtion: 'منتج دهانات عالي الجودة والذي يتميز بالمتانة والمقاومة للعوامل الخارجية مثل الرطوبة \n والحرارة والأشعة فوق البنفسجية\n كما يتميز بسهولة التطبيق والتغطية العالية للأسطح المختلفة',
    ),
    PaintModel(
      id: 2,
      name: 'Sija Plus(سيجا بلس)',
      prices: 85.0,
      Describtion: 'منتج دهانات عالي الجودة والذي يتميز بالمتانة والمقاومة للعوامل الخارجية مثل الرطوبة \n والحرارة والأشعة فوق البنفسجية\n كما يتميز بسهولة التطبيق والتغطية العالية للأسطح المختلفة',
    ),
    PaintModel(
      id: 3,
      name: 'Sija Smoke(سيجا دخان)',
      prices: 85.0,
      Describtion: 'منتج دهانات عالي الجودة والذي يتميز بالمتانة والمقاومة للعوامل الخارجية مثل الرطوبة \n والحرارة والأشعة فوق البنفسجية\n كما يتميز بسهولة التطبيق والتغطية العالية للأسطح المختلفة',
    ),
      PaintModel(
      id: 4,
      name: 'Metallic(ميتاليك)',
      prices: 85.0,
      Describtion: 'منتج دهانات عالي الجودة والذي يتميز بالمتانة والمقاومة للعوامل الخارجية مثل الرطوبة \n والحرارة والأشعة فوق البنفسجية\n كما يتميز بسهولة التطبيق والتغطية العالية للأسطح المختلفة',
    ),
    PaintModel(
      id: 5,
      name: 'Stucco(ستوكو)',
      prices: 85.0,
      Describtion: 'منتج دهانات عالي الجودة والذي يتميز بالمتانة والمقاومة للعوامل الخارجية مثل الرطوبة \n والحرارة والأشعة فوق البنفسجية\n كما يتميز بسهولة التطبيق والتغطية العالية للأسطح المختلفة',
    ),
    PaintModel(
      id: 6,
      name: 'Soli(سواحيلي)',
      prices: 85.0,
      Describtion: 'منتج دهانات عالي الجودة والذي يتميز بالمتانة والمقاومة للعوامل الخارجية مثل الرطوبة \n والحرارة والأشعة فوق البنفسجية\n كما يتميز بسهولة التطبيق والتغطية العالية للأسطح المختلفة',
    ),
      PaintModel(
      id: 7,
      name: 'Reflisi(ريفليزي)',
      prices: 85.0,
      Describtion: 'منتج دهانات عالي الجودة والذي يتميز بالمتانة والمقاومة للعوامل الخارجية مثل الرطوبة \n والحرارة والأشعة فوق البنفسجية\n كما يتميز بسهولة التطبيق والتغطية العالية للأسطح المختلفة',
    ),
    PaintModel(
      id: 8,
      name: 'Flower(فلاور)',
      prices: 85.0,
      Describtion: 'منتج دهانات عالي الجودة والذي يتميز بالمتانة والمقاومة للعوامل الخارجية مثل الرطوبة \n والحرارة والأشعة فوق البنفسجية\n كما يتميز بسهولة التطبيق والتغطية العالية للأسطح المختلفة',
    ),
  ];

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(40.0),
        child: AppBar(
          centerTitle: true,
          elevation: 0,
          title: Text('B.S For Paitnings',
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
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                stops: [0.0, 0.5, 1.0],
                colors: [Color.fromARGB(255, 84, 188, 236),Colors.red ,Colors.orange],
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
                      child: Row(
                        children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(50.0),
                                child: CircleAvatar(
                                                        radius: 200,
                                                        backgroundImage:  AssetImage('images/icon.png'),
                                                        
                                  ),
                              ),
                            ),
            Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          height: 540, // Set the desired height for the horizontal list
                          child: ListView.separated(
                            itemCount: paints.length, // Adjust the number of items as needed
                            itemBuilder: (context, index) => buildcomponentitem(paints[index]),
                            separatorBuilder: (context, index) => SizedBox(
                              width: 20,
                            ),
                          ),
                        ),
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
              Widget buildcomponentitem (PaintModel paint)=>
              InkWell(
                onTap: (){
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
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Row(
                                children: [
                                  Text(
                                '${paint.prices}\$',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w900,
                                  color: Color.fromARGB(255, 34, 236, 41),
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                '${paint.name}',
                                style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.white,
                                ),
                              ),
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(textAlign: TextAlign.end,
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
                          Container(
                            height: 140,
                            width: 125,
                            decoration: BoxDecoration( 
                          image: DecorationImage(
                            fit:BoxFit.cover,
                            image: AssetImage(
                              'images/tray.png',
                              ),
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(20))
                        ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );  
            }