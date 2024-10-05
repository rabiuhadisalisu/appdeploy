import 'package:get/get.dart';
import 'package:nrideapp/features/auth/screens/sign_in_screen.dart';
import 'package:nrideapp/features/splash/controllers/splash_controller.dart';
import 'package:nrideapp/helper/display_helper.dart';
import 'error_response.dart';

class ApiChecker {
  static void checkApi(Response response) {
    if(response.statusCode == 401) {
      Get.find<SplashController>().removeSharedData();
      //showCustomSnackBar(response.body['message']);
      Get.offAll(()=> const SignInScreen());

    }else if(response.statusCode == 403){
      ErrorResponse errorResponse;
      errorResponse = ErrorResponse.fromJson(response.body);
      if(errorResponse.errors != null && errorResponse.errors!.isNotEmpty){
        showCustomSnackBar(errorResponse.errors![0].message!);
      }else{
        showCustomSnackBar(response.body['message']!);
      }

    }else {
      showCustomSnackBar(response.statusText!);
    }
  }
}
