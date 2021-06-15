import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:youtube_music_clone/user/features/home/presentation/music-model.dart';
import 'package:youtube_music_clone/utils/constant.dart';
import 'package:youtube_music_clone/utils/pallet.dart';
import 'package:youtube_music_clone/utils/utils.dart';

class MusicItem extends StatelessWidget {
  final MusicModel music;
  final Function onClick;
  MusicItem({this.music, this.onClick});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.only(right: 10),
      child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                child: Stack(
              children: [
                InkWell(
                    onTap: onClick,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                        "${Constant.IMAGE_DIR}${music.image}",
                        fit: BoxFit.cover,
                        height: Utils.isLandscape(context)
                            ? Utils.getDeviceHeight(context) / 2
                            : Utils.getDeviceHeight(context) / 4.5,
                        width: Utils.isLandscape(context)
                            ? Utils.getDeviceWidth(context) / 3
                            : Utils.getDeviceWidth(context) / 2,
                      ),
                    )),
                Positioned.fill(
                    child: Align(
                        alignment: Alignment.center,
                        child: Container(
                            child: SvgPicture.asset(
                          Constant.IMAGE_DIR + "play-fill.svg",
                          height: 50,
                          width: 50,
                        ))))
              ],
            )),
            SizedBox(
              height: 10,
            ),
            Container(
                child: Text(
              music.title,
              style: TextStyle(
                  color: Pallet.textDark,
                  fontSize: 14,
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
                  fontSize: 12,
                  fontWeight: FontWeight.w500),
            ))
          ]),
    );
  }
}
