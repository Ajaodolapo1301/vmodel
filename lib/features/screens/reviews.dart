// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:vmodel_reviews/core/constants/app_asset.dart';
// import 'package:vmodel_reviews/core/constants/textstyle.dart';
// import 'package:vmodel_reviews/core/widgets/listview.dart';

// class ReviewPage extends StatelessWidget {
//   const ReviewPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     int numOfReviews = 5;
//     return MaterialApp(
//       home: Scaffold(
//         body: SafeArea(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Container(
//                 margin:
//                     const EdgeInsets.symmetric(horizontal: 5.0, vertical: 10.0),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     IconButton(
//                       icon: SvgPicture.asset(AppAsset.backIcon),
//                       onPressed: () {},
//                     ),
//                     Text('My Reviews', style: CustomStyle.kTopTextStyle),
//                     IconButton(
//                         onPressed: () {},
//                         icon: SvgPicture.asset(AppAsset.settingIcon)),
//                   ],
//                 ),
//               ),
//               const Divider(
//                 height: 10.0,
//                 color: Color(0xffE3E8EF),
//                 thickness: 1.5,
//               ),
//               Container(
//                 margin:
//                     const EdgeInsets.symmetric(horizontal: 18.0, vertical: 10.0),
//                 child: Column(
//                   children: [
//                     Text(
//                       '${numOfReviews} Reviews',
//                       style: CustomStyle.kTopTextStyle,
//                     ),

//                   ],
//                 ),
//               ),
//               const SizedBox(
//                 height: 20.0,
//               ),
//               Expanded(
//                 flex: 1,
//                   child: Container(
//                 margin:
//                     const EdgeInsets.symmetric(horizontal: 18.0, vertical: 10.0),
//                 child: DemoListTile(),
//               )),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
