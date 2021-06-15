import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:youtube_music_clone/utils/constant.dart';
import 'package:youtube_music_clone/utils/pallet.dart';
import 'package:youtube_music_clone/utils/utils.dart';

class PlayerPage extends StatefulWidget {
  static const String id = "/playerpage";
  @override
  State<StatefulWidget> createState() => PlayerPageState();
}

class PlayerPageState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Pallet.backgroundColor,
      body: SafeArea(
          child: Container(
              padding: EdgeInsets.all(15),
              child: Column(
                children: [
                  Container(
                      child: Row(
                    children: [
                      Container(
                          child: SvgPicture.asset(
                              Constant.IMAGE_DIR + "arrow-down-s-line.svg")),
                      Spacer(),
                      Container(
                          child: SvgPicture.asset(
                              Constant.IMAGE_DIR + "more-2-fill.svg"))
                    ],
                  )),
                  SizedBox(height: 30),
                  InkWell(
                      child: Container(
                          margin: EdgeInsets.only(left: 10, right: 10),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(
                              "${Constant.IMAGE_DIR}dummy-music-1.jpg",
                              fit: BoxFit.cover,
                              height: Utils.isLandscape(context)
                                  ? Utils.getDeviceHeight(context) / 2
                                  : Utils.getDeviceHeight(context) / 2,
                              width: Utils.getDeviceWidth(context),
                            ),
                          ))),
                  SizedBox(height: 30),
                  Container(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                          child: SvgPicture.asset(
                              Constant.IMAGE_DIR + "thumb-down-line.svg")),
                      Container(
                          child: Text(
                        "Love Me Like You",
                        style: TextStyle(
                            color: Pallet.textDark,
                            fontSize: 20,
                            fontWeight: FontWeight.w800),
                      )),
                      Container(
                          child: SvgPicture.asset(
                              Constant.IMAGE_DIR + "thumb-up-line.svg"))
                    ],
                  )),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                      child: Text(
                    "Ellie Goulding",
                    style: TextStyle(
                        color: Pallet.textLight,
                        fontSize: 12,
                        fontWeight: FontWeight.w500),
                  ))
                ],
              ))),
    );
  }
}
