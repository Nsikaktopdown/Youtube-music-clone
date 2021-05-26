
import 'package:flutter/material.dart';
import 'package:youtube_music_clone/user/features/home/presentation/home.dart';
import 'package:youtube_music_clone/user/features/home/presentation/parent-navs.dart';
import 'package:youtube_music_clone/user/features/splash/splash.dart';

class RouteGenerator {
  static const String HomePageRoute = '/home_page';
  static const String LoginRoute = '/login';
  


  static Route<dynamic> generateRoute(RouteSettings settings) {
    // Getting arguments passed in while calling Navigator.pushNamed
    final args = settings.arguments;
    switch (settings.name) {
      case HomePage.id:
        return MaterialPageRoute(
          builder: (_) => HomePage(),
        );

        case ParentNavs.id:
        return MaterialPageRoute(
          builder: (_) => ParentNavs(),
        );
     
        // If args is not of the correct type, return an error page.
        // You can also throw an exception while in development.
        return _errorRoute();
      default:
        // If there is no such named route in the switch statement, e.g. /third
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Error'),
        ),
        body: Center(
          child: Text('ERROR'),
        ),
      );
    });
  }
}
