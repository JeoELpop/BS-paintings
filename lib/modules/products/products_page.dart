import 'package:bs/shared/constant.dart';
import 'package:flutter/material.dart';

class Products extends StatelessWidget {

  static String id = 'Products';
  
  final Widget MobileProducts;
  final Widget DesktopProducts;

  Products({
    required this.MobileProducts,
    required this.DesktopProducts,
  });
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
            if (constraints.maxWidth < mobileWidth) {
            return MobileProducts;
            } else {
              return DesktopProducts;
            }
      }
          );
        }




}