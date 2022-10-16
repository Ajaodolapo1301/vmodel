import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';

import '../constants/textstyle.dart';

class ContainerDemo extends StatefulWidget {
  // const ContainerDemo({super.key});

  @override
  State<ContainerDemo> createState() => _ContainerDemoState();
}

class _ContainerDemoState extends State<ContainerDemo> {
  final List<String> _items = [
    "Commercial",
    "Glamour",
    "Food",
    "Runaway",
    "Daillies",
    "Minutes",
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 1.0, vertical: 10),
      height: 50.0,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: _items.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            decoration: BoxDecoration(
                color: Color(0xffEFEFEF),
                borderRadius: BorderRadius.circular(10.0)),
            child: Padding(
              padding: const EdgeInsets.all(7.0),
              child: FittedBox(
                  fit: BoxFit.fitHeight,
                  child: Text(_items[index],
                      style: CustomStyle.kContainerTextStyle)),
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(width: 10);
        },
      ),
    );
  }
}

// class ContainerDemo2 extends StatefulWidget {
//   const ContainerDemo2({super.key});

//   @override
//   State<ContainerDemo2> createState() => _ContainerDemo2State();
// }

// class _ContainerDemo2State extends State<ContainerDemo2> {
//   int selectedIndex = 0;
//   final List<String> _items = [
//     AppAsset.snakeIcon,
//     "Send Message",
//     "Send an offer",
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: EdgeInsets.symmetric(horizontal: 1.0, vertical: 10),
//       height: 50.0,
//       child: ListView.separated(
//         scrollDirection: Axis.horizontal,
//         itemCount: _items.length,
//         itemBuilder: (BuildContext context, int index) {
//           return GestureDetector(
//             onTap: () {
//               selectedIndex = index;
//             },
//   child: Container(
//     margin: EdgeInsets.symmetric(vertical: 10),
//     decoration: BoxDecoration(
//         color: selectedIndex == index
//             ? Color(0xff543B3A)
//             : Color(0xffFFFFFF),
//         borderRadius: BorderRadius.circular(10.0),
//         border: Border.all(color: const Color(0xff543B3A))),
//     child: Padding(
//       padding: const EdgeInsets.all(7.0),
//       child: FittedBox(
//           fit: BoxFit.fitWidth,
//           child: Text(_items[index],
//               style: TextStyle(
//                   color: selectedIndex == index
//                       ? Color(0xffffffff)
//                       : Color(0xff695353)))),
//     ),
//   ),
// );
// },
//         separatorBuilder: (BuildContext context, int index) {
//           return const SizedBox(width: 10);
//         },
//       ),
//     );
//   }
// }
// class ContainerDemo2 extends StatefulWidget {
//   const ContainerDemo2({super.key});

//   @override
//   State<ContainerDemo2> createState() => _ContainerDemo2State();
// }

class ContainerDemo2 extends StatelessWidget {
  final String? icon;
  final String text;
  final Color? color;
  final Color? textColor;
  ContainerDemo2({this.icon, required this.text, this.color, this.textColor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: InkWell(
        onTap: () {},
        child: Container(
            height: 37.0,
            width: 124.0,
            margin: EdgeInsets.symmetric(
              vertical: 0,
            ),
            decoration: BoxDecoration(
                color: color ?? Color(0xff543B3A),
                borderRadius: BorderRadius.circular(8.0),
                border: Border.all(color: const Color(0xff543B3A))),
            child: FittedBox(
                fit: BoxFit.fitWidth,
                // child:Row(
                //   children: [
                //     if(icon != null)SvgPicture.asset(icon!),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(text,
                      style: TextStyle(
                          color: textColor ?? const Color(0xfffffffff),
                          fontSize: 8.0,
                          fontFamily: 'Avenir Next')),
                ))),
      ),
    );
  }
}

class ContainerSnake extends StatelessWidget {
  final String icon;

  final Color? color;

  const ContainerSnake({
    Key? key,
    required this.icon,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 37.0,
      margin: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
          color: color ?? Color(0xff543B3A),
          borderRadius: BorderRadius.circular(10.0),
          border: Border.all(color: const Color(0xff543B3A))),
      child: Padding(
        padding: const EdgeInsets.all(7.0),
        child: FittedBox(
          fit: BoxFit.fitWidth,
          // child:Row(
          //   children: [
          //     if(icon != null)SvgPicture.asset(icon!),
          child: SvgPicture.asset(icon),
        ),
      ),
    );
  }
}
