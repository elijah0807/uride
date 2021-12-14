// ignore_for_file: file_names

import 'package:get/get.dart';
import 'package:uride/controller/data_controller.dart';

class SplashScreenController extends GetxController {
  final DataController dataController = Get.find();
  checkStartUpLogic() {
    // checkLogin();

    Future.delayed(Duration(seconds: 10), () {
      Get.toNamed('/home');
      // if (dataController.islogin.isTrue) {
      //   //  RemoteServices.loginUser(dataController., password);
      // }
    });
  }

  @override
  void onInit() {
    checkStartUpLogic();
    super.onInit();
  }

  // Future<bool> checkLogin() async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   if (prefs.containsKey("recently")) {
  //     fetchSpDataRecently();
  //   }
  //   if (prefs.containsKey("islogin")) {
  //     dataController.islogin(true);
  //     fetchSpData().then((value) {});
  //     return true;
  //   }
  //
  //   return false;
  // }
  //
  // Future<UserLoginModel> fetchSpData() async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //
  //   Map<String, dynamic> userMap;
  //   final String userStr = prefs.getString('user')!;
  //   userMap = jsonDecode(userStr) as Map<String, dynamic>;
  //   dataController.userList = userLoginModelFromJson(userStr);
  //
  //   dataController.email.value = prefs.getString("email")!;
  //   dataController.pass.value = prefs.getString("pass")!;
  //   print("object sp");
  //   print(dataController.userList.user.userEmail);
  //
  //   RemoteServices.loginUserByCode(
  //       prefs.getString("email"), prefs.getString("pass"));
  //
  //   return dataController.userList;
  // }
  //
  // fetchSpDataRecently() async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //
  //   // Map<String, dynamic> userMap;
  //   final String recently = prefs.getString('recently')!;
  //   // userMap = jsonDecode(recently) as Map<String, dynamic>;
  //   dataController.recentlyList.value = recentlyModelFromJson(recently);
}
