

import 'package:nrideapp/features/splash/domain/repositories/splash_repository_interface.dart';
import 'package:nrideapp/features/splash/domain/services/splash_service_interface.dart';

class SplashService implements SplashServiceInterface{
 final SplashRepositoryInterface splashRepositoryInterface;
 SplashService({required this.splashRepositoryInterface});

  @override
  Future getConfigData() {
    return splashRepositoryInterface.getConfigData();
  }

  @override
  Future<bool> initSharedData() {
    return splashRepositoryInterface.initSharedData();
  }

  @override
  Future<bool> removeSharedData() {
    return splashRepositoryInterface.removeSharedData();
  }

  @override
  bool haveOngoingRides() {
    return splashRepositoryInterface.haveOngoingRides();
  }

  @override
  void saveOngoingRides(bool value) {
    return splashRepositoryInterface.saveOngoingRides(value);
  }


}