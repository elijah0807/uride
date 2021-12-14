// ignore_for_file: prefer_const_constructors

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class AddPhoto extends StatefulWidget {
  const AddPhoto({Key? key}) : super(key: key);

  @override
  _AddPhotoState createState() => _AddPhotoState();
}

class _AddPhotoState extends State<AddPhoto> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(15.sp),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 5.h,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // ignore: prefer_const_constructors
                Align(
                  // ignore: prefer_const_constructors
                  child: CircleAvatar(
                    backgroundColor: Color(0xfff4f4fa),
                    radius: 40.sp,
                    child: Icon(
                      FontAwesome.user,
                      color: Colors.black,
                      size: 60,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.sp,
                ),
                AutoSizeText(
                  'Add your photo for safer, smoother pickups',
                  presetFontSizes: [20.sp, 22.sp],
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 5.sp,
                ),
                AutoSizeText(
                  'Your photo will be used by your driver to identify you for safer rides.',
                  presetFontSizes: [12.sp, 13.sp],
                  style: TextStyle(
                      // fontWeight: FontWeight.bold,
                      ),
                ),
                SizedBox(
                  height: 5.sp,
                ),
                AutoSizeText(
                  'Drivers can only view your photo during pickup and will not be able to access it once the ride is completed.',
                  presetFontSizes: [12.sp, 13.sp],
                  style: TextStyle(
                      // fontWeight: FontWeight.bold,
                      ),
                ),
              ],
            ),
            SizedBox(
              height: 30.h,
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
                      'Take photo',
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
                    Get.toNamed('/welcome');
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
                      'Later',
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
