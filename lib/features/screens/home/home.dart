import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:vmodel/features/screens/feeds/feeds.dart';

import '../../../core/constants/app_asset.dart';
import '../jobs_market.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentIndex = 0;
  PageController pageController = PageController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        body: SafeArea(
          bottom: false,
          child: PageView(
            controller: pageController,
            physics: const NeverScrollableScrollPhysics(),
            children: [
              FeedsPage(),
              SizedBox(),
              SizedBox(),
              SizedBox(),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          height: 105,
          child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              currentIndex: currentIndex,
              onTap: (v) {
                currentIndex = v;
                pageController.jumpToPage(v);
                setState(() {});
              },
              items: <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                    icon: Column(
                      children: [
                        // Icon(Icons.home),
                        SvgPicture.asset(AppAsset.homeIcon),
                      ],
                    ),
                    activeIcon: Column(
                      children: [
                        // Icon(Icons.home),
                        SvgPicture.asset(AppAsset.homeIcon),
                        SvgPicture.asset(AppAsset.ovalIcon)
                      ],
                    ),
                    label: " "),
                BottomNavigationBarItem(
                    icon: SvgPicture.asset(AppAsset.discoverIcon), label: ''),
                BottomNavigationBarItem(
                    icon: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => JobMarkets()));
                        },
                        child: SvgPicture.asset(AppAsset.vModelIcon)),
                    label: ''),
                BottomNavigationBarItem(
                    icon: SvgPicture.asset(AppAsset.infinityIcon), label: ''),
                BottomNavigationBarItem(
                    activeIcon: Column(
                      children: [
                        const CircleAvatar(
                          radius: 18.0,
                          backgroundColor: Color(0xff543B3B),
                          child: CircleAvatar(
                            radius: 16.0,
                            backgroundImage: AssetImage(AppAsset.photo1),
                          ),
                        ),
                        SvgPicture.asset(AppAsset.ovalIcon)
                      ],
                    ),
                    icon: const CircleAvatar(
                      radius: 18.0,
                      backgroundColor: Color(0xff543B3B),
                      child: CircleAvatar(
                        radius: 16.0,
                        backgroundImage: AssetImage(AppAsset.photo1),
                      ),
                    ),
                    label: ''),
              ]),
        ));
  }
}
