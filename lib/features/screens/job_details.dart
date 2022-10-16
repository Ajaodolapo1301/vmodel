import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../core/constants/app_asset.dart';
import '../../core/constants/textstyle.dart';
import '../../core/widgets/container_demo.dart';

class JobDetails extends StatelessWidget {
  const JobDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 1.0,
          backgroundColor: const Color(0xffffffff),
          centerTitle: true,
          leading: InkWell(
            onTap: () => Navigator.pop(context),
            child: const Icon(
              Icons.arrow_back_ios,
              color: CustomStyle.kIconColor,
            ),
          ),
          title: Text(
            'Jobs Markets',
            style: CustomStyle.kTopTextStyle,
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Row(
                children: [
                  SvgPicture.asset(AppAsset.settingWhiteIcon),
                  const SizedBox(
                    width: 10.0,
                  ),
                  SvgPicture.asset(AppAsset.iconLast)
                ],
              ),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0)),
            child: Container(
              height: 412.0,
              margin:
                  const EdgeInsets.symmetric(horizontal: 18.0, vertical: 15.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Christopher M Davies',
                        style: CustomStyle.kTextStyle,
                      ),
                      Row(
                        children: [
                          SvgPicture.asset(AppAsset.shareIcon),
                          const SizedBox(
                            width: 15.0,
                          ),
                          SvgPicture.asset(AppAsset.heartIcon),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Container(
                    // margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    child: Row(
                      children: [
                        const CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 40.0,
                          backgroundImage: AssetImage(
                            AppAsset.circleImage2,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 30),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text('Location',
                                      style: CustomStyle.kSmallSubTitleStyle),
                                  const SizedBox(
                                    width: 15.0,
                                  ),
                                  Text('London, UK',
                                      style: CustomStyle.kSubTitleStyle),
                                ],
                              ),
                              const SizedBox(
                                height: 2.0,
                              ),
                              Row(
                                children: [
                                  Text('Gender',
                                      style: CustomStyle.kSmallSubTitleStyle),
                                  const SizedBox(width: 18.9),
                                  Text('Male',
                                      style: CustomStyle.kSubTitleStyle),
                                ],
                              ),
                              const SizedBox(
                                height: 2.0,
                              ),
                              Row(
                                children: [
                                  Text('Duration',
                                      style: CustomStyle.kSmallSubTitleStyle),
                                  const SizedBox(width: 13.0),
                                  Text('3:30hr',
                                      style: CustomStyle.kSubTitleStyle),
                                ],
                              ),
                              const SizedBox(
                                height: 2.0,
                              ),
                              Row(
                                children: [
                                  Text('Budget',
                                      style: CustomStyle.kSmallSubTitleStyle),
                                  const SizedBox(width: 19.9),
                                  Text('\$450',
                                      style: CustomStyle.kSubTitleStyle),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  ContainerDemo(),
                  Container(
                    child: Text(
                      'Hello,\n'
                      'We’re a small photography team looking for a Models to help us build our portfolio,'
                      'we’re interested in Food, Commercial, Glamour and abstract shoots.\n'
                      'Thanks.\n We need about 5 models for this campaign, interested models should please send us an offer :)',
                      textAlign: TextAlign.left,
                      style: CustomStyle.kCommentTextStyle,
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Row(
                      children: [
                        //                   Container(
                        //   height: 37.0,
                        //    margin: EdgeInsets.symmetric(vertical: 10),
                        //   decoration: BoxDecoration(
                        //       color:  Color(0xff543B3A),
                        //       borderRadius: BorderRadius.circular(10.0),
                        //       border: Border.all(color: const Color(0xff543B3A))),
                        //   child: Padding(
                        //     padding: const EdgeInsets.all(7.0),
                        //     child: FittedBox(
                        //         fit: BoxFit.fitWidth,
                        //         child:
                        //           SvgPicture.asset(AppAsset.snakeIcon),
                        //                 ),
                        //   ),
                        //ContainerSnake(icon: AppAsset.snakeIcon,),

                        SvgPicture.asset(AppAsset.snakeIcon),
                        SizedBox(
                          width: 0.0,
                        ),
                        ContainerDemo2(
                          text: 'Send Message',
                          textColor: Color(0xff543B3A),
                          color: Color(0xffffffff),
                        ),
                        SizedBox(
                          width: 0.0,
                        ),
                        ContainerDemo2(
                          text: 'Send an offer',
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
