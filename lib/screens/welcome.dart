// ignore_for_file: prefer_const_constructors

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(15.sp),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 5.h,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AutoSizeText(
                  'Welcome, Elijah',
                  presetFontSizes: [20.sp, 22.sp],
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 5.sp,
                ),
                AutoSizeText(
                  'What do you want to do today?.',
                  presetFontSizes: [12.sp, 13.sp],
                  style: TextStyle(
                      // fontWeight: FontWeight.bold,
                      ),
                ),
                SizedBox(
                  height: 5.sp,
                ),
              ],
            ),
            SizedBox(
              height: 15.h,
            ),
            Column(
              children: [
                Image.asset('assets/images/take_a_ride.png'),
              ],
            ),
            SizedBox(
              height: 15.h,
            ),
            Column(
              children: [
                InkWell(
                  onTap: () {
                    // Get.toNamed('/auth');
                  },
                  child: Container(
                    padding: EdgeInsets.all(15.sp),
                    // margin: EdgeInsets.only(right: 10.sp, left: 10),
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.circular(25.sp),
                    ),
                    width: MediaQuery.of(context).size.width,
                    child: AutoSizeText(
                      'Take a ride now',
                      textAlign: TextAlign.center,
                      presetFontSizes: [16.sp, 18.sp],
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.sp,
                ),
                InkWell(
                  onTap: () {
                    // Get.toNamed('/auth');
                  },
                  child: Container(
                    padding: EdgeInsets.all(15.sp),
                    // margin: EdgeInsets.only(right: 10.sp, left: 10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25.sp),
                      border: Border.all(
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                    width: MediaQuery.of(context).size.width,
                    child: AutoSizeText(
                      'Get ready to ride later',
                      textAlign: TextAlign.center,
                      presetFontSizes: [16.sp, 18.sp],
                      style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
