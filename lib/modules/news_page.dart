import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({super.key});
static String id = 'NewsPage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('News'),
      ),
      body: Center(
        child: Placeholder(
          fallbackHeight: 200,
          fallbackWidth: 200,
        ),
      ),
    );
  }
}