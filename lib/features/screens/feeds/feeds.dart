import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vmodel/features/screens/feeds/widget/post_widget.dart';

import '../../../core/constants/app_asset.dart';
import '../../../core/constants/textstyle.dart';
import 'data/model/post_model.dart';

class FeedsPage extends StatefulWidget {
  const FeedsPage({Key? key}) : super(key: key);

  @override
  State<FeedsPage> createState() => _FeedsPageState();
}

class _FeedsPageState extends State<FeedsPage> {
  // ignore: unused_field

  final controller = ScrollController();
  final List<PostModel> postModelList = [
    PostModel(
      image: AppAsset.photo1,
      images: [
        AppAsset.photo1,
        AppAsset.photo2,
        AppAsset.photo3,
      ],
      isLiked: true,
      numOfLikes: "200",
      numOfShares: "800",
      name: "John Doe",
    ),
    PostModel(
      image: AppAsset.photo1,
      images: [
        AppAsset.photo1,
        AppAsset.photo2,
        AppAsset.photo3,
      ],
      isLiked: true,
      numOfLikes: "200",
      numOfShares: "800",
      name: "John Doe",
    ),
    PostModel(
      image: AppAsset.photo1,
      images: [
        AppAsset.photo1,
        AppAsset.photo2,
        AppAsset.photo3,
      ],
      isLiked: false,
      numOfLikes: "200",
      numOfShares: "800",
      name: "John Doe",
    ),
  ];
  int _selectedIndex = 0;

  PageController _pageController = PageController(initialPage: 0);
  double current = 0.0;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 1,
          centerTitle: true,
          backgroundColor: Colors.white,
          title: Container(
            margin: const EdgeInsets.symmetric(horizontal: 1.0, vertical: 10.0),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SvgPicture.asset(AppAsset.icon1),
                      const SizedBox(
                        width: 12,
                      ),
                      SvgPicture.asset(AppAsset.icon2),
                    ],
                  ),
                  Text('Feed', style: CustomStyle.kTitleStyle2),
                  Row(
                    children: [
                      IconButton(
                          // ignore: avoid_returning_null_for_void
                          onPressed: () {},
                          icon: SvgPicture.asset(AppAsset.clipIcon)),
                      SvgPicture.asset(AppAsset.icon4),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView.separated(
                  itemBuilder: (context, index) {
                    return PostWidget(postModel: postModelList[index]);
                  },
                  separatorBuilder: (context, index) {
                    return const SizedBox(
                      height: 10,
                    );
                  },
                  itemCount: postModelList.length),
            ),
          ],
        ));
  }
}
