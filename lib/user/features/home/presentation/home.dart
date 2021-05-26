import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:youtube_music_clone/user/features/home/presentation/music-item.dart';
import 'package:youtube_music_clone/user/features/home/presentation/music-model.dart';
import 'package:youtube_music_clone/utils/pallet.dart';
import 'package:youtube_music_clone/utils/utils.dart';

class HomePage extends StatefulWidget {
  static const String id = "/homepage";
  @override
  State<StatefulWidget> createState() => HomePageState();
}

class HomePageState extends State {
  List<MusicModel> musicList = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    musicList.add(MusicModel(
        title: "At My Worst (feat. Kehlani)",
        image: "dummy-music-1.jpg",
        description: "Pink Sweat • PINK PLANET • 2021"));
    musicList.add(MusicModel(
        title: "At My Worst (feat. Kehlani)",
        image: "dummy-music-1.jpg",
        description: "Pink Sweat • PINK PLANET • 2021"));
  }

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
        actions: [
          Padding(
              padding: EdgeInsets.all(20), child: Icon(Icons.search, size: 26))
        ],
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
                  )),
                  SizedBox(
                    height: 10,
                  ),
                  _listItem(),
                  Container(
                      child: Text(
                    "Listen Again",
                    style: TextStyle(
                        color: Pallet.textLight,
                        fontSize: 14,
                        fontWeight: FontWeight.normal),
                  )),
                  Container(
                      child: Text(
                    "Your afternoon Music",
                    style: TextStyle(
                        color: Pallet.textDark,
                        fontSize: 20,
                        fontWeight: FontWeight.w700),
                  )),
                  SizedBox(
                    height: 10,
                  ),
                  _listItem(),
                  Container(
                      child: Text(
                    "Your Favourites",
                    style: TextStyle(
                        color: Pallet.textDark,
                        fontSize: 20,
                        fontWeight: FontWeight.w700),
                  )),
                  SizedBox(
                    height: 10,
                  ),
                  _listItem()
                ],
              ))),
    );
  }

  Widget _listItem() {
    return Container(
        height: Utils.getDeviceHeight(context) / 3,
        width: Utils.getDeviceWidth(context) / 1.5,
        margin: EdgeInsets.only(bottom: 10, top: 20),
        child: ListView.builder(
            shrinkWrap: true,
            physics: ScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: musicList.length,
            itemBuilder: (BuildContext context, int position) {
              return GestureDetector(
                  onTap: () => {}, child: MusicItem(musicList[position]));
            }));
  }
}
