// ignore_for_file: prefer_const_constructors

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class WhatYourEmail extends StatefulWidget {
  const WhatYourEmail({Key? key}) : super(key: key);

  @override
  _WhatYourEmailState createState() => _WhatYourEmailState();
}

class _WhatYourEmailState extends State<WhatYourEmail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(15.sp),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AutoSizeText(
              'What\'s your email?',
              presetFontSizes: [20.sp, 22.sp],
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 5.sp,
            ),
            AutoSizeText(
              'This is where we\'ll send your ride receipts',
              presetFontSizes: [12.sp, 13.sp],
              style: TextStyle(
                  // fontWeight: FontWeight.bold,
                  ),
            ),
            SizedBox(
              height: 20.sp,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                width: 90.w,
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(5.sp),
                      child: Icon(
                        Icons.email,
                        size: 15.sp,
                      ),
                    ),
                    Container(
                      width: 80.w,
                      child: TextFormField(
                        textAlign: TextAlign.start,
                        decoration: InputDecoration(
                          hintText: 'Email address',
                          contentPadding: EdgeInsets.all(10.sp),
                          // hintStyle: TextStyle()
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20.sp,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).primaryColor,
        onPressed: () {
          Get.toNamed('/terms_of_service');
        },
        child: Icon(
          Icons.arrow_forward,
          color: Colors.white,
        ),
      ),
    );
  }
}
