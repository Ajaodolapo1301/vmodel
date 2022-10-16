import 'package:flutter/material.dart';

import '../../core/constants/textstyle.dart';

class MediaOption extends StatelessWidget {
  MediaOption({Key? key}) : super(key: key);

  final List<String> _items = [
    'Edit',
    'Share',
    'Save',
    'Send',
    'Archive',
    'Make portfolio main photo',
    'Make polaroid main photo',
    'delete photo'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Card(
            elevation: 10.0,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)),
            child: Container(
              height: 480.0,
              child: ListView.separated(
                  itemCount: _items.length,
                  //scrollDirection: Axis.vertical,
                  itemBuilder: (BuildContext context, int index) {
                    return Center(
                      child: Text(
                        _items[index],
                        style: CustomStyle.kSmallTitleStyle,
                      ),
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return Container(
                      margin:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                      child: Divider(
                        // height: 40.0,
                        color: Color(0xff979797),
                      ),
                    );
                  }),
            ),
          ),
        ),
      ),
    );
  }
}
