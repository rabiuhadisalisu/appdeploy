

import 'package:get/get_connect/http/src/response/response.dart';
import 'package:nrideapp/interface/repository_interface.dart';

abstract class SplashRepositoryInterface implements RepositoryInterface{

  Future<Response> getConfigData();
  Future<bool> initSharedData();
  Future<bool> removeSharedData();
  bool haveOngoingRides();
  void saveOngoingRides(bool value);
}