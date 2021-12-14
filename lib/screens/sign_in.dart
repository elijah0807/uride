// ignore_for_file: prefer_const_constructors

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:country_code_picker/country_code_picker.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  String code = '+1';
  void _onCountryChange(CountryCode countryCode) {
    //TODO : manipulate the selected country code here

    print("New Country selected: " + countryCode.toString());
    setState(() {
      code = countryCode.toString();
    });
  }

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
              'What\'s your number?',
              presetFontSizes: [20.sp, 22.sp],
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 5.sp,
            ),
            AutoSizeText(
              'We\'ll text a code to verify your phone',
              presetFontSizes: [12.sp, 13.sp],
              style: TextStyle(
                  // fontWeight: FontWeight.bold,
                  ),
            ),
            SizedBox(
              height: 10.sp,
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black12,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(
                  10.sp,
                ),
              ),
              // padding: EdgeInsets.all(5.sp),
              height: 50.sp,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 60.sp,
                    height: 50.sp,
                    margin: EdgeInsets.only(right: 5.sp),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black12,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10.sp),
                        bottomLeft: Radius.circular(10.sp),
                      ),
                    ),
                    child: FittedBox(
                      child: CountryCodePicker(
                        onChanged: _onCountryChange,
                        hideMainText: true,
                        showFlagMain: true,
                        showFlag: true,
                        initialSelection: 'US',
                        hideSearch: true,
                        showCountryOnly: true,
                        // showOnlyCountryWhenClosed: true,
                        alignLeft: true,
                      ),
                    ),
                  ),
                  Container(
                    width: 30.sp,
                    margin: EdgeInsets.only(
                      left: 2.sp,
                    ),
                    child: AutoSizeText(
                      code,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    width: 45.w,
                    child: TextFormField(
                      style: TextStyle(
                        color: Colors.black,
                      ),
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          contentPadding: EdgeInsets.all(10),
                          hintText: '(201) 8073 2773 15'),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.sp,
            ),
            Align(
              alignment: Alignment.center,
              child: InkWell(
                onTap: () {
                  Get.toNamed('/recover');
                },
                child: AutoSizeText(
                  'Changed your number? Find your account',
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
          Get.toNamed('/verify');
        },
        child: Icon(
          Icons.arrow_forward,
          color: Colors.white,
        ),
      ),
    );
  }
}
