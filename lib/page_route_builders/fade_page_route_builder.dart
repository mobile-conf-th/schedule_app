import 'package:flutter/cupertino.dart';

class FadePageRouteBuilder extends PageRouteBuilder {
  final Widget widget;

  FadePageRouteBuilder({this.widget})
      : super(pageBuilder: (context, animation, secondaryAnimation) {
          return widget;
        }, transitionsBuilder:
            (context, animation, secondaryAnimation, widget) {
          return FadeTransition(opacity: animation, child: widget);
        });
}
