import 'package:flutter/cupertino.dart';

class NoAnimationPageRouteBuilder extends PageRouteBuilder {
  final Widget widget;

  NoAnimationPageRouteBuilder({this.widget})
      : super(pageBuilder: (context, animation, secondaryAnimation) {
          return widget;
        }, transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return SlideTransition(
            position:
                Tween(begin: Offset.zero, end: Offset.zero).animate(animation),
            child: child,
          );
        });
}
