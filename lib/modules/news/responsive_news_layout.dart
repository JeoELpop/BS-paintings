import 'package:bs/shared/constant.dart';
import 'package:flutter/material.dart';

class News extends StatelessWidget {
  final Widget MobileNewsPage;
  final Widget DesktopNewsPage;

  News({
    required this.MobileNewsPage,
    required this.DesktopNewsPage,
  });
static String id = 'News';
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
            if (constraints.maxWidth < mobileWidth) {
            return MobileNewsPage;
            } else {
              return DesktopNewsPage;
            }
      }
          );
        }
      }