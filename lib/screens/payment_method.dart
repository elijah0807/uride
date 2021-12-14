// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class PaymentMethod extends StatefulWidget {
  const PaymentMethod({Key? key}) : super(key: key);

  @override
  _PaymentMethodState createState() => _PaymentMethodState();
}

class _PaymentMethodState extends State<PaymentMethod> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 3.h,
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: EdgeInsets.all(10.sp),
              child: InkWell(
                onTap: () {
                  Get.toNamed('/add_photo');
                },
                child: AutoSizeText(
                  'Skip',
                  presetFontSizes: [13.sp, 14.sp],
                  style: TextStyle(
                      // fontWeight: FontWeight.bold,
                      ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(5.sp),
            child: Container(
              height: 60.h,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.all(10.sp),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        AutoSizeText(
                          'How would you like to pay??',
                          presetFontSizes: [20.sp, 22.sp],
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 5.sp,
                        ),
                        AutoSizeText(
                          'You\'ll only be charged after your ride.',
                          presetFontSizes: [12.sp, 13.sp],
                          style: TextStyle(
                              // fontWeight: FontWeight.bold,
                              ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20.sp,
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 10.sp),
                    padding: EdgeInsets.only(
                      bottom: 10.sp,
                      top: 10.sp,
                    ),
                    decoration: BoxDecoration(
                      color: Color(0xfff4f4fa),
                      borderRadius: BorderRadius.circular(5.sp),
                    ),
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 20.sp,
                        child: Icon(
                          FontAwesome.bank,
                          color: Colors.black,
                        ),
                      ),
                      title: AutoSizeText(
                        'Online banking',
                      ),
                      subtitle: AutoSizeText('Link your bank account'),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 10.sp),
                    padding: EdgeInsets.only(
                      bottom: 10.sp,
                      top: 10.sp,
                    ),
                    decoration: BoxDecoration(
                      color: Color(0xfff4f4fa),
                      borderRadius: BorderRadius.circular(5.sp),
                    ),
                    child: ListTile(
                      leading: CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 20.sp,
                          child: Image.asset(
                            'assets/icons/paypal.png',
                            width: 20.sp,
                            height: 20.sp,
                          )),
                      title: AutoSizeText(
                        'PayPal',
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 10.sp),
                    padding: EdgeInsets.only(
                      bottom: 10.sp,
                      top: 10.sp,
                    ),
                    decoration: BoxDecoration(
                      color: Color(0xfff4f4fa),
                      borderRadius: BorderRadius.circular(5.sp),
                    ),
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 20.sp,
                        child: Icon(
                          // FontAwesome.cc_mastercard,
                          Icons.credit_card,
                          color: Colors.black,
                        ),
                      ),
                      title: AutoSizeText(
                        'Credit or Debit Card',
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: AutoSizeText(
                      'Use another method',
                      style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Padding(
            padding: EdgeInsets.all(10.sp),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Icon(
                  Icons.lock,
                  size: 10.sp,
                ),
                AutoSizeText('URide doesn\'t store your payment info.'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
