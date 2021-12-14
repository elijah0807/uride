// ignore_for_file: prefer_const_constructors

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:sizer/sizer.dart';

class VerifyPhone extends StatefulWidget {
  const VerifyPhone({Key? key}) : super(key: key);

  @override
  _VerifyPhoneState createState() => _VerifyPhoneState();
}

class _VerifyPhoneState extends State<VerifyPhone> {
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
              'Enter the code',
              presetFontSizes: [20.sp, 22.sp],
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 5.sp,
            ),
            Row(
              children: [
                AutoSizeText(
                  'Sent to',
                  presetFontSizes: [12.sp, 13.sp],
                  style: TextStyle(
                      // fontWeight: FontWeight.bold,
                      ),
                ),
                SizedBox(
                  width: 5.sp,
                ),
                AutoSizeText(
                  '+234 807 327 7315',
                  presetFontSizes: [12.sp, 13.sp],
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30.sp,
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                width: 70.w,
                child: OTPTextField(
                  length: 6,
                  margin: EdgeInsets.all(5.sp),
                  obscureText: true,
                ),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).primaryColor,
        onPressed: () {
          Get.toNamed('/what_your_name');
        },
        child: Icon(
          Icons.arrow_forward,
          color: Colors.white,
        ),
      ),
    );
  }
}
