import 'package:flutter/material.dart';
import 'package:youtube_music_clone/core/di/injector.dart';
import 'package:youtube_music_clone/core/ui/routes/routes_generator.dart';
import 'package:youtube_music_clone/user/features/splash/splash.dart';
import 'package:youtube_music_clone/utils/pallet.dart';

void main() {
  configureDependencies();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Pallet.loadColor2(true);
    return MaterialApp(
        theme: ThemeData(
            // This is the theme of your application.
            //
            // Try running your application with "flutter run". You'll see the
            // application has a blue toolbar. Then, without quitting the app, try
            // changing the primarySwatch below to Colors.green and then invoke
            // "hot reload" (press "r" in the console where you ran "flutter run",
            // or simply save your changes to "hot reload" in a Flutter IDE).
            // Notice that the counter didn't reset back to zero; the application
            // is not restarted.
            brightness: Brightness.dark,
            canvasColor: Colors.white,
            primaryColor: Pallet.mainColor,
            accentColor: Pallet.mainColor,
            primaryColorDark: Pallet.mainColor,
            fontFamily: 'OpenSans'),
        home: SplashScreenPage(),
        onGenerateRoute: RouteGenerator.generateRoute);
  }
}
