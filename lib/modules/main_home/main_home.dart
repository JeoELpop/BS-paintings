import 'package:bs/shared/constant.dart';
import 'package:flutter/material.dart';

class MainHomePage extends StatelessWidget {

  static String id = 'MainHomePage';
  
  final Widget MobileMainHomePage;
  final Widget DesktopMainHomePage;

  MainHomePage({
    required this.MobileMainHomePage,
    required this.DesktopMainHomePage,
  });
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
            if (constraints.maxWidth < mobileWidth) {
            return MobileMainHomePage;
            } else {
              return DesktopMainHomePage;
            }
      }
          );
        }




}