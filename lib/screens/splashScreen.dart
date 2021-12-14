// ignore_for_file: file_names, prefer_const_constructors

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animator/flutter_animator.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:uride/controller/splash_screenController.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: GetBuilder<SplashScreenController>(
        builder: (_) {
          return Scaffold(
            body: Container(
              color: Theme.of(context).backgroundColor,
              child: Column(
                children: [
                  Expanded(
                    child: Align(
                      alignment: Alignment.center,
                      child: FadeInUp(
                        child: Padding(
                          padding: EdgeInsets.all(40.sp),
                          child: Image.asset(
                            "assets/images/logo.png",
                            height: 75.sp,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 2.h,
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
