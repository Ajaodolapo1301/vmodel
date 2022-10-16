import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:share/share.dart';

import '../../../../core/constants/app_asset.dart';
import '../../../../core/constants/textstyle.dart';
import '../data/model/post_model.dart';
import 'circle_bar.dart';

class PostWidget extends StatefulWidget {
  final PostModel? postModel;
  const PostWidget({Key? key, this.postModel}) : super(key: key);

  @override
  State<PostWidget> createState() => _PostWidgetState();
}

class _PostWidgetState extends State<PostWidget> {
  int _currentPage = 0;
  PageController _pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 18.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 18.0,
                backgroundColor: Color(0xff543B3B),
                child: CircleAvatar(
                  radius: 16.0,
                  backgroundImage: AssetImage(widget.postModel!.image!),
                ),
              ),
              Row(
                children: [
                  Container(
                      margin: const EdgeInsets.fromLTRB(10, 4, 20, 20),
                      child: Text(
                        widget.postModel!.name!,
                        style: CustomStyle.kTextStyle,
                      )),
                ],
              ),
              const Spacer(),
              InkWell(
                  onTap: () {
                    Navigator.of(context).restorablePush(_modalBuilder);
                    //showCupertinoModalPopup(context: context, builder: mediaOption);
                  },
                  child: Container(
                      margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: SvgPicture.asset(AppAsset.verticalIcon))),
            ],
          ),
        ),
        const Divider(
          height: 5.0,
          color: Color(0xffeeeeee),
          thickness: 1.5,
        ),
        Container(
          height: 470,
          child: PageView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: widget.postModel!.images!.length,
            onPageChanged: (page) {
              setState(() {
                _currentPage = page;
              });
            },
            controller: _pageController,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      height: 470.0,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image:
                                  AssetImage(widget.postModel!.images![index]),
                              fit: BoxFit.cover)),
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                ],
              );
            },
          ),
        ),
        const SizedBox(
          height: 10.0,
        ),
        Container(
          margin: const EdgeInsets.fromLTRB(18, 0, 18, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      GestureDetector(
                          onTap: () => Share.share(
                              'check out my website https://example.com',
                              subject: 'Look what I made!'),
                          child: SvgPicture.asset(AppAsset.shareIcon)),
                      const SizedBox(height: 5.0),
                      Text(widget.postModel!.numOfShares!),
                    ],
                  ),
                  const SizedBox(
                    width: 13.0,
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                    child: GestureDetector(
                        onTap: () => {},
                        child: SvgPicture.asset(
                          AppAsset.clipIcon,
                        )),
                  )
                ],
              ),
              Row(
                children: _buildPageIndicator(widget.postModel!.images!),
              ),
              Row(
                children: [
                  Container(
                      margin: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                      child: SvgPicture.asset(AppAsset.previewIcon)),
                  const SizedBox(
                    width: 13,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          widget.postModel!.isLiked! !=
                              widget.postModel!.isLiked!;
                          setState(() {});
                        },
                        child: SvgPicture.asset(
                          AppAsset.heartIcon,
                          color: widget.postModel!.isLiked!
                              ? Colors.red
                              : Colors.black,
                        ),
                      ),
                      const SizedBox(height: 5.0),
                      Text(widget.postModel!.numOfLikes!)
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  Route<void> _modalBuilder(BuildContext context, Object? arguments) {
    return CupertinoModalPopupRoute<void>(builder: (BuildContext context) {
      return CupertinoActionSheet(
        // title: Text(''),
        // message: Text(''),
        actions: <Widget>[
          CupertinoActionSheetAction(
            child: Text(
              'Edit',
              style: CustomStyle.kTitleStyle,
            ),
            onPressed: () {
              Navigator.of(context).pop('Edit');
            },
          ),
          CupertinoActionSheetAction(
            child: Text('Share', style: CustomStyle.kTitleStyle),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          CupertinoActionSheetAction(
            child: Text('Save', style: CustomStyle.kTitleStyle),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          CupertinoActionSheetAction(
            child: Text('Send', style: CustomStyle.kTitleStyle),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          CupertinoActionSheetAction(
            child: Text('Archive', style: CustomStyle.kTitleStyle),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          CupertinoActionSheetAction(
            child: Text('Make portfolio main photo',
                style: CustomStyle.kTitleStyle),
            onPressed: () {
              _showActionSheet2(context);
            },
          ),
          CupertinoActionSheetAction(
            child: Text('Make polaroid main photo',
                style: CustomStyle.kTitleStyle),
            onPressed: () {
              _showActionSheet(context);
            },
          ),
          CupertinoActionSheetAction(
            child: Text('delete', style: CustomStyle.kTitleRedStyle),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],

        cancelButton: CupertinoActionSheetAction(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(
              'Cancel',
              style: CustomStyle.kTitleStyle,
            )),
      );
    });
  }

  void _showActionSheet(BuildContext context) {
    showCupertinoModalPopup<void>(
        context: context,
        builder: (BuildContext context) => CupertinoActionSheet(
              actions: <Widget>[
                CupertinoActionSheetAction(
                  child: Text(
                    'follow user',
                    style: CustomStyle.kTitleStyle,
                  ),
                  onPressed: () {
                    Navigator.of(context).pop('');
                  },
                ),
                CupertinoActionSheetAction(
                  child: Text('Thumbs up', style: CustomStyle.kTitleStyle),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                CupertinoActionSheetAction(
                  child: Text('Save', style: CustomStyle.kTitleStyle),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                CupertinoActionSheetAction(
                  child: Text('Post a comment', style: CustomStyle.kTitleStyle),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                CupertinoActionSheetAction(
                  child: Text('Share', style: CustomStyle.kTitleStyle),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                CupertinoActionSheetAction(
                  child: Text('Save', style: CustomStyle.kTitleStyle),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                CupertinoActionSheetAction(
                  child: Text('Send', style: CustomStyle.kTitleStyle),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                CupertinoActionSheetAction(
                  child: Text('Message user', style: CustomStyle.kTitleStyle),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                CupertinoActionSheetAction(
                  child: Text('Book user', style: CustomStyle.kTitleStyle),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                CupertinoActionSheetAction(
                  child:
                      Text('Report photo', style: CustomStyle.kTitleRedStyle),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ],
              cancelButton: CupertinoActionSheetAction(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    'Cancel',
                    style: CustomStyle.kTitleStyle,
                  )),
            ));
  }

  void _showActionSheet2(BuildContext context) {
    showCupertinoModalPopup<void>(
        context: context,
        builder: (BuildContext context) => CupertinoActionSheet(
              actions: <Widget>[
                CupertinoActionSheetAction(
                  child: Text(
                    'unfollow user',
                    style: CustomStyle.kTitleStyle,
                  ),
                  onPressed: () {
                    Navigator.of(context).pop('');
                  },
                ),
                CupertinoActionSheetAction(
                  child:
                      Text('Remove Thumbs up', style: CustomStyle.kTitleStyle),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                CupertinoActionSheetAction(
                  child: Text('View comments', style: CustomStyle.kTitleStyle),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                CupertinoActionSheetAction(
                  child: Text('Share', style: CustomStyle.kTitleStyle),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                CupertinoActionSheetAction(
                  child: Text('Save', style: CustomStyle.kTitleStyle),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                CupertinoActionSheetAction(
                  child: Text('Send', style: CustomStyle.kTitleStyle),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                CupertinoActionSheetAction(
                  child: Text('Message model', style: CustomStyle.kTitleStyle),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                CupertinoActionSheetAction(
                  child: Text('Book model', style: CustomStyle.kTitleStyle),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                CupertinoActionSheetAction(
                  child:
                      Text('Report photo', style: CustomStyle.kTitleRedStyle),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ],
              cancelButton: CupertinoActionSheetAction(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    'Cancel',
                    style: CustomStyle.kTitleStyle,
                  )),
            ));
  }

  List<Widget> _buildPageIndicator(List<String> img) {
    List<Widget> list = [];
    for (int i = 0; i < img.length; i++) {
      list.add(i == _currentPage ? CircleBar(true) : CircleBar(false));
    }
    return list;
  }
}
