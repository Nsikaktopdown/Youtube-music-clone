import 'package:youtube_music_clone/user/features/home/presentation/home.dart';
import 'package:youtube_music_clone/user/features/home/presentation/widget/parent-navs.dart';
import 'package:youtube_music_clone/utils/pallet.dart';
import 'package:youtube_music_clone/utils/role.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashScreenPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => SplashScreenState();
}

class SplashScreenState extends State {
  // final repository = UserModuleInjector.resolve<UserRepository>();

  @override
  void initState() {
    new Future.delayed(const Duration(milliseconds: 1000), () {
      Navigator.pushNamed(context, ParentNavs.id);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Pallet.mainColor,
      body: SafeArea(
        child: Container(
          child: Center(
              child: Text("Youtube Music Clone",
                  style: TextStyle(
                      color: Pallet.textDark, fontWeight: FontWeight.w700))),
        ),
      ),
    );
  }

  // Future<void> checkUserLoginStatus() async {
  //   var isLoggedIn = await repository.isLoggedIn();
  //   var user = await repository.getUser();
  //   print("role" + user.role);
  //   if (isLoggedIn) {
  //     // if (user.role == Role.HOST_WAITER) {
  //     //   Navigator.pushNamed(context, RouteGenerator.OrderListRoute, arguments: true);
  //     // } else {
  //       Navigator.pushNamed(context, RouteGenerator.HomePageRoute);
  //    // }
  //   } else {
  //     Navigator.pushNamed(context, RouteGenerator.LoginRoute);
  //   }
  // }
}
