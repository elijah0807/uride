// ignore_for_file: prefer_const_constructors

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class RecoverAccount extends StatefulWidget {
  const RecoverAccount({Key? key}) : super(key: key);

  @override
  _RecoverAccountState createState() => _RecoverAccountState();
}

class _RecoverAccountState extends State<RecoverAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Recover your account',
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(15.sp),
        child: Column(
          children: [
            TextFormField(
              textAlign: TextAlign.start,
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.email,
                  size: 25.sp,
                ),
                hintText: 'Email',
                contentPadding: EdgeInsets.all(10.sp),
                // hintStyle: TextStyle()
              ),
            ),
            SizedBox(
              height: 5.sp,
            ),
            Align(
              alignment: Alignment.center,
              child: Column(
                children: [
                  AutoSizeText(
                    'We\'ll send you a verification email',
                    presetFontSizes: [12.sp, 13.sp],
                    style: TextStyle(

                        // fontWeight: FontWeight.bold,
                        ),
                  ),
                  SizedBox(
                    height: 15.sp,
                  ),
                  InkWell(
                    // onTap: () {
                    //   Get.toNamed('/recover');
                    // },
                    child: AutoSizeText(
                      'Help me find my email',
                      presetFontSizes: [12.sp, 13.sp],
                      style: TextStyle(color: Theme.of(context).primaryColor
                          // fontWeight: FontWeight.bold,
                          ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).primaryColor,
        onPressed: () {},
        child: Icon(
          Icons.arrow_forward,
          color: Colors.white,
        ),
      ),
    );
  }
}
