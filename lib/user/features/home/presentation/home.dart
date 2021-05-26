import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:youtube_music_clone/utils/pallet.dart';

class HomePage extends StatefulWidget {
  static const String id = "/homepage";
  @override
  State<StatefulWidget> createState() => HomePageState();
}

class HomePageState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Pallet.backgroundColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Pallet.mainColor,
        title: Container(
          child: Row(
            children: [
              SvgPicture.asset(
                "assets/images/movie-fill.svg",
                height: 30,
                width: 30,
              ),
              Text(
                "Music",
                style: TextStyle(
                    color: Pallet.textDark,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
      body: SafeArea(
          child: Container(
              padding: EdgeInsets.all(20),
              child: ListView(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                      child: Text(
                    "Your Favourites",
                    style: TextStyle(
                        color: Pallet.textDark,
                        fontSize: 20,
                        fontWeight: FontWeight.w700),
                  ))
                ],
              ))),
    );
  }
}
