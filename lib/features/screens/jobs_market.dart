import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../core/constants/app_asset.dart';
import '../../core/constants/textstyle.dart';
import '../../core/models/container_model.dart';
import 'job_details.dart';

class JobMarkets extends StatelessWidget {
  // const JobMarkets({key});

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
              )),
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
        body: Container(
          margin: EdgeInsets.symmetric(horizontal: 8.0, vertical: 22.0),
          child: Column(
            children: [
              ContainerWidget(),
              Expanded(
                child: GridView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) => GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const JobDetails()),
                        );
                      },
                      child: ContainerTile(
                          name: "Christopher M",
                          image: AppAsset.imageContainer,
                          icon: AppAsset.heart)),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 15,
                      crossAxisSpacing: 15),
                ),
              )
            ],
          ),
        ));
  }
}
