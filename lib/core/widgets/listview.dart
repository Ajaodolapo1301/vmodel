import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants/app_asset.dart';
import '../constants/textstyle.dart';
import '../models/list_model.dart';

class DemoListTile extends StatelessWidget {
  List<ListModel> titles = [
    ListModel(
        title: "Georgina Powell",
        subtitle: "Oct 23, 2022",
        image: AppAsset.circleImage,
        icon: AppAsset.starIcon,
        text: "2 weeks ago",
        comment:
            "I’m very happy working with you guys, I’m so happy  i got invited into this app and have got a booking  just under 24hrs! thanks so much guys for the nomin… ",
        number: "4.9",
        locationNumber: "5",
        jobQualityNumber: "4.5",
        timingNumber: "5",
        workEnergyNumber: "4.9"),
    ListModel(
        title: "Axel Arigato",
        subtitle: "Oct 24, 2022",
        image: AppAsset.circleImage,
        icon: AppAsset.starIcon,
        text: "1 week ago",
        comment:
            "I’m very happy working with you guys, I’m so happy  i got invited into this app and have got a booking  just under 24hrs! thanks so much guys for the nomin… ",
        number: "4.9",
        locationNumber: "5",
        jobQualityNumber: "4.5",
        timingNumber: "5",
        workEnergyNumber: "4.9"),
    ListModel(
        title: "Axel Arigato",
        subtitle: "Oct 24, 2022",
        image: AppAsset.circleImage,
        icon: AppAsset.starIcon,
        text: "1 week ago",
        comment:
            "I’m very happy working with you guys, I’m so happy  i got invited into this app and have got a booking  just under 24hrs! thanks so much guys for the nomin… ",
        number: "4.9",
        locationNumber: "5",
        jobQualityNumber: "4.5",
        timingNumber: "5",
        workEnergyNumber: "4.9"),
    ListModel(
        title: "Axel Arigato",
        subtitle: "Oct 24, 2022",
        image: AppAsset.circleImage,
        icon: AppAsset.starIcon,
        text: "1 week ago",
        comment:
            "I’m very happy working with you guys, I’m so happy  i got invited into this app and have got a booking  just under 24hrs! thanks so much guys for the nomin… ",
        number: "4.9",
        locationNumber: "5",
        jobQualityNumber: "4.5",
        timingNumber: "5",
        workEnergyNumber: "4.9"),
    ListModel(
        title: "Axel Arigato",
        subtitle: "Oct 24, 2022",
        image: AppAsset.circleImage,
        icon: AppAsset.starIcon,
        text: "1 week ago",
        comment:
            "I’m very happy working with you guys, I’m so happy  i got invited into this app and have got a booking  just under 24hrs! thanks so much guys for the nomin… ",
        number: "4.9",
        locationNumber: "5",
        jobQualityNumber: "4.5",
        timingNumber: "5",
        workEnergyNumber: "4.9"),
  ];
  DemoListTile({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemCount: titles.length,
        itemBuilder: (context, index) {
          return Column(children: [
            Row(
              //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.lightBlueAccent,
                  child: Image.asset(titles[index].image!),
                ),
                SizedBox(
                  width: 8.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      titles[index].title!,
                      style: CustomStyle.kTitleStyle,
                    ),
                    Row(
                      children: [
                        Text(
                          titles[index].subtitle!,
                          style: CustomStyle.kSubTitleStyle,
                        ),
                        const SizedBox(
                          width: 5.0,
                        ),
                        Text(
                          titles[index].text!,
                          style: CustomStyle.kSmallSubTitleStyle,
                        ),
                      ],
                    ),
                  ],
                ),
                Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          titles[index].number!,
                          style: CustomStyle.kNumberBoldStyle1,
                        ),
                        SvgPicture.asset(titles[index].icon!),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          titles[index].locationNumber!,
                          style: CustomStyle.kNumberBoldStyle,
                        ),
                        const Icon(
                          Icons.star,
                          color: CustomStyle.kIconColor,
                          size: CustomStyle.kStarSize,
                        ),
                      ],
                    ),
                    const SizedBox(height: 5.0),
                    Text(
                      'Location',
                      style: CustomStyle.kSubTitleStyle,
                    )
                  ],
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          titles[index].jobQualityNumber!,
                          style: CustomStyle.kNumberBoldStyle,
                        ),
                        const Icon(
                          Icons.star,
                          color: CustomStyle.kIconColor,
                          size: CustomStyle.kStarSize,
                        ),
                      ],
                    ),
                    const SizedBox(height: 5.0),
                    Text(
                      'Job Quality',
                      style: CustomStyle.kSubTitleStyle,
                    )
                  ],
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          titles[index].timingNumber!,
                          style: CustomStyle.kNumberBoldStyle,
                        ),
                        const Icon(
                          Icons.star,
                          color: CustomStyle.kIconColor,
                          size: CustomStyle.kStarSize,
                        ),
                      ],
                    ),
                    const SizedBox(height: 5.0),
                    Text(
                      'Timing',
                      style: CustomStyle.kSubTitleStyle,
                    )
                  ],
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          titles[index].workEnergyNumber!,
                          style: CustomStyle.kNumberBoldStyle,
                        ),
                        const Icon(
                          Icons.star,
                          color: CustomStyle.kIconColor,
                          size: CustomStyle.kStarSize,
                        ),
                      ],
                    ),
                    const SizedBox(height: 5.0),
                    Text(
                      'Work Energy',
                      style: CustomStyle.kSubTitleStyle,
                    )
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 10.0,
            ),
            Text(
              titles[index].comment!,
              textAlign: TextAlign.justify,
              style: CustomStyle.kCommentTextStyle,
            )
          ]);
        },
        separatorBuilder: (BuildContext context, int index) {
          return const Divider(
            height: 30.0,
            thickness: 1.5,
          );
        });
  }
}
