import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:youtube_music_clone/user/features/home/presentation/home.dart';
import 'package:youtube_music_clone/utils/pallet.dart';

class ParentNavs extends StatefulWidget {
  static const String id = "/parentNavs";
  @override
  _ParentNavsState createState() => _ParentNavsState();
}

class _ParentNavsState extends State {
  PageController _pageController;
  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(keepPage: true);
  }

  dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Pallet.mainColor,
        body: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          children: [HomePage(), HomePage(), HomePage()],
        ),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(color: Pallet.mainColor),
          height: 60,
          width: double.infinity,
          child: BottomNavigationBar(
            backgroundColor: Pallet.mainColor,
            currentIndex: currentIndex,
            selectedItemColor: Pallet.white,
            unselectedItemColor: Pallet.textLight,
            showUnselectedLabels: true,

            onTap: (index) {
              _pageController.jumpToPage(index);
              setState(() {
                currentIndex = index;
              });
            },
            // A6A6B1
            items: [
              BottomNavigationBarItem(
                icon: SvgPicture.asset("assets/images/home-inactive.svg",
                    color: currentIndex == 0 ? Colors.white : Pallet.textLight),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset("assets/images/explore-inactive.svg",
                    color: currentIndex == 1 ? Colors.white : Pallet.textLight),
                label: 'Explore',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset("assets/images/library-inactive.svg",
                    color: currentIndex == 3 ? Colors.white : Pallet.textLight),
                label: 'Library',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
