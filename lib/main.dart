// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:theme_provider/theme_provider.dart';
import 'package:uride/pages.dart';
import 'package:uride/service_binder.dart';
import 'package:uride/style.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp],
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ThemeProvider(
      saveThemesOnChange: true,
      loadThemeOnInit: true,
      themes: <AppTheme>[
        AppTheme(
          id: "light",
          description: "light",
          data: ThemeData(
            // Real theme data
            primaryColor: lightBgColor,
            accentColor: Colors.red,
            backgroundColor: lightBgColor,
            fontFamily: 'Sfpro',
            appBarTheme: AppBarTheme(
              backgroundColor: Colors.white,
              elevation: 0,
              foregroundColor: Colors.black,
            ),
            scaffoldBackgroundColor: Colors.white,
          ),
        ),
        AppTheme(
          id: "dark",
          description: "dark",
          data: ThemeData(
            // Real theme data
            primaryColor: darkPrimaryColor,
            backgroundColor: darkBgColor,
            accentColor: Colors.red,
            scaffoldBackgroundColor: Colors.black,
            fontFamily: 'Sfpro',
            appBarTheme: AppBarTheme(
              backgroundColor: Colors.black,
              elevation: 0,
              foregroundColor: Colors.white,
            ),
          ),
        )
      ],
      child: ThemeConsumer(
        child: Builder(
            builder: (themeContext) => Sizer(
                  builder: (context, orientation, deviceType) {
                    return GetMaterialApp(
                      theme: ThemeProvider.themeOf(themeContext).data,
                      smartManagement: SmartManagement.keepFactory,
                      initialBinding: ServicesBinder(),
                      debugShowCheckedModeBanner: false,
                      // color: Theme.of(context).backgroundColor,
                      getPages: pages,
                      initialRoute: "/splash",
                    );
                  },
                )),
      ),
    );
  }
}
