import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';

import '../constants/app_asset.dart';
import '../constants/textstyle.dart';
import 'list_model.dart';

class ContainerWidget extends StatefulWidget {
  // const ContainerWidget({});

  @override
  State<ContainerWidget> createState() => _ContainerWidgetState();
}

class _ContainerWidgetState extends State<ContainerWidget> {
  int selected = 0;

  final List<ContainerModel> _items = [
    ContainerModel(
        text: 'Jobs', jobs: 'Photographer', icon: AppAsset.arrowDown),
    ContainerModel(
        text: 'Jobs', jobs: 'Photographer', icon: AppAsset.arrowDown),
    ContainerModel(text: 'Jobs', jobs: 'Photographer', icon: AppAsset.arrowDown)
  ];

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.0,
      child: Container(
          margin: EdgeInsets.symmetric(horizontal: 15),
          height: 50,
          child: ListView.separated(
            padding: EdgeInsets.only(bottom: 2.0),
            scrollDirection: Axis.horizontal,
            itemCount: _items.length,
            shrinkWrap: true,
            // snapshot.data.documents[index]
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    selected = index;
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: CustomStyle.kIconColor),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: FittedBox(
                    fit: BoxFit.fitWidth,
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            _items[index].text,
                            style: CustomStyle.kSmallSubTitleStyle,
                          ),
                          SizedBox(
                            width: 8.0,
                          ),
                          Text(
                            _items[index].jobs,
                            style: CustomStyle.kTextStyle,
                          ),
                          SizedBox(
                            width: 8.0,
                          ),
                          GestureDetector(
                              // ignore: avoid_returning_null_for_void
                              onTap: (() {}),
                              child: SvgPicture.asset(_items[index].icon))
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return SizedBox(width: 10.0);
            },
          )),
    );
  }
}

class ContainerTile extends StatelessWidget {
  String? name;
  String? icon;
  String? image;
  ContainerTile({
    // super.key,
    this.name,
    this.icon,
    this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Stack(children: [
          Container(
            height: 105.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                image: DecorationImage(
                    fit: BoxFit.cover, image: AssetImage(image!))),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SvgPicture.asset(AppAsset.shareWhiteIcon),
                      SvgPicture.asset(AppAsset.heart),
                    ],
                  ),
                  Text(
                    name!,
                    style: CustomStyle.kWhiteTextStyle
                        .copyWith(fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          ),
        ]),
        SizedBox(
          height: 15.0,
        ),
        Container(
          margin: EdgeInsets.only(left: 5.0),
          child: Row(
            children: [
              SvgPicture.asset(AppAsset.locatonIcon),
              SizedBox(
                width: 10.0,
              ),
              Text(
                'London',
                style: CustomStyle.kTextStyle,
              ),
              Spacer(),
              Row(
                children: [
                  SvgPicture.asset(AppAsset.clock),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    '3:30 hr',
                    style: CustomStyle.kTextStyle
                        .copyWith(fontWeight: FontWeight.w600),
                  )
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        Container(
          margin: EdgeInsets.only(left: 5.0),
          child: Row(
            children: [
              SvgPicture.asset(AppAsset.maleIcon),
              SizedBox(
                width: 10.0,
              ),
              Text(
                'Male',
                style: CustomStyle.kTextStyle,
              ),
              Spacer(),
              Row(
                children: [
                  SvgPicture.asset(AppAsset.pounceIcon),
                  SizedBox(
                    width: 12.0,
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 8.9),
                    child: Text(
                      '\$450',
                      style: CustomStyle.kTextStyle,
                    ),
                  )
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}

//  decoration: BoxDecoration(
//             image: DecorationImage(
//                     fit: BoxFit.cover,
//                     image: AssetImage(AppAsset.photo1))
//                 ),
//                  child: Image.asset(AppAsset.photo1, )
