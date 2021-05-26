import 'package:flutter/material.dart';
import 'package:youtube_music_clone/user/features/home/presentation/music-model.dart';
import 'package:youtube_music_clone/utils/pallet.dart';
import 'package:youtube_music_clone/utils/utils.dart';

class MusicItem extends StatelessWidget {
  MusicModel music;
  MusicItem(this.music);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.only(right: 10),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: Image.asset(
            "assets/images/${music.image}",
            height: Utils.getDeviceHeight(context) / 4.5,
            width: Utils.getDeviceWidth(context) / 2,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
            child: Text(
          music.title,
          style: TextStyle(
              color: Pallet.textDark,
              fontSize: 15,
              fontWeight: FontWeight.w600),
        )),
        SizedBox(
          height: 5,
        ),
        Container(
            child: Text(
          music.description,
          style: TextStyle(
              color: Pallet.textLight,
              fontSize: 13,
              fontWeight: FontWeight.w500),
        ))
      ]),
    );
  }
}
