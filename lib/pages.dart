// ignore_for_file: prefer_const_constructors

import 'package:get/get.dart';
import 'package:uride/controller/splash_screenController.dart';
import 'package:uride/screens/add_photo.dart';
import 'package:uride/screens/home.dart';
import 'package:uride/screens/payment_method.dart';
import 'package:uride/screens/recover_your_account.dart';
import 'package:uride/screens/sign_in.dart';
import 'package:uride/screens/splashScreen.dart';
import 'package:uride/screens/terms_of_service.dart';
import 'package:uride/screens/verify_phone.dart';
import 'package:uride/screens/welcome.dart';
import 'package:uride/screens/what_your_email.dart';
import 'package:uride/screens/what_your_name.dart';

List<GetPage> pages = [
  GetPage(
    name: '/splash',
    page: () => SplashScreen(),
    binding: BindingsBuilder(
      () {
        Get.put(SplashScreenController());
      },
    ),
  ),
  GetPage(
    name: '/home',
    page: () => Home(),
  ),
  GetPage(
    name: '/auth',
    page: () => AuthScreen(),
  ),
  GetPage(
    name: '/recover',
    page: () => RecoverAccount(),
  ),
  GetPage(
    name: '/verify',
    page: () => VerifyPhone(),
  ),
  GetPage(
    name: '/what_your_name',
    page: () => WhatYourName(),
  ),
  GetPage(
    name: '/what_your_email',
    page: () => WhatYourEmail(),
  ),
  GetPage(
    name: '/terms_of_service',
    page: () => TermsOfService(),
  ),
  GetPage(
    name: '/payment_method',
    page: () => PaymentMethod(),
  ),
  GetPage(
    name: '/add_photo',
    page: () => AddPhoto(),
  ),
  GetPage(
    name: '/welcome',
    page: () => Welcome(),
  ),
];
