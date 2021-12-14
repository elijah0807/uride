// ignore_for_file: prefer_const_constructors

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class TermsOfService extends StatefulWidget {
  const TermsOfService({Key? key}) : super(key: key);

  @override
  _TermsOfServiceState createState() => _TermsOfServiceState();
}

class _TermsOfServiceState extends State<TermsOfService> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 5.h,
          ),
          Container(
            padding: EdgeInsets.all(10.sp),
            color: Theme.of(context).primaryColor,
            child: Text(
              'Before you can proceed you must read and agree to URide\'s Terms of Service',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(15.sp),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                AutoSizeText(
                  'URide Terms of Service',
                  presetFontSizes: [20.sp, 22.sp],
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomSheet: Padding(
        padding: EdgeInsets.all(15.sp),
        child: InkWell(
          onTap: () {
            Get.toNamed('/payment_method');
          },
          child: Container(
            // margin: EdgeInsets.only(right: 10.sp, left: 10),
            padding: EdgeInsets.all(15.sp),
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.circular(25.sp),
            ),
            width: MediaQuery.of(context).size.width,
            child: AutoSizeText(
              'I Agree',
              textAlign: TextAlign.center,
              presetFontSizes: [16.sp, 18.sp],
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
