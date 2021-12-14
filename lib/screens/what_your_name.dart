// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class WhatYourName extends StatefulWidget {
  const WhatYourName({Key? key}) : super(key: key);

  @override
  _WhatYourNameState createState() => _WhatYourNameState();
}

class _WhatYourNameState extends State<WhatYourName> {
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
              'What\'s your name?',
              presetFontSizes: [20.sp, 22.sp],
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 5.sp,
            ),
            AutoSizeText(
              'Driver\'s will confirm it\'s you when they pull up',
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
                width: 85.w,
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(5.sp),
                      child: Icon(
                        FontAwesome.user,
                        size: 15.sp,
                      ),
                    ),
                    Container(
                      width: 35.w,
                      child: TextFormField(
                        textAlign: TextAlign.start,
                        decoration: InputDecoration(
                          hintText: 'First name',
                          contentPadding: EdgeInsets.all(10.sp),
                          // hintStyle: TextStyle()
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10.sp,
                    ),
                    Container(
                      width: 35.w,
                      child: TextFormField(
                        textAlign: TextAlign.start,
                        decoration: InputDecoration(
                          hintText: 'Last name',
                          contentPadding: EdgeInsets.all(10.sp),
                          // hintStyle: TextStyle()
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20.sp,
            ),
            Align(
              alignment: Alignment.center,
              child: InkWell(
                onTap: () {
                  // Get.toNamed('/recover');
                },
                child: AutoSizeText(
                  'Already have an account?',
                  presetFontSizes: [12.sp, 13.sp],
                  style: TextStyle(color: Theme.of(context).primaryColor
                      // fontWeight: FontWeight.bold,
                      ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).primaryColor,
        onPressed: () {
          Get.toNamed('/what_your_email');
        },
        child: Icon(
          Icons.arrow_forward,
          color: Colors.white,
        ),
      ),
    );
  }
}
