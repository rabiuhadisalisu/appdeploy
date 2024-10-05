
import 'package:image_picker/image_picker.dart';
import 'package:nrideapp/data/api_client.dart';
import 'package:nrideapp/features/profile/domain/models/vehicle_body.dart';

abstract class ProfileServiceInterface {
  Future<dynamic> profileOnlineOffline();
  Future<dynamic> getProfileInfo();
  Future<dynamic> dailyLog();
  Future<dynamic> getVehicleModelList(int offset);
  Future<dynamic> getVehicleBrandList(int offset);
  Future<dynamic> getCategoryList(int offset);
  Future<dynamic> addNewVehicle(VehicleBody vehicleBody, List<MultipartDocument> file );
  Future<dynamic> updateVehicle(VehicleBody vehicleBody, String driverId);
  Future<dynamic> updateProfileInfo(
      String firstName, String lastname,String email,
      String identityType, String identityNumber,
      XFile? profile,List<MultipartBody>? identityImage,
      List<String> services
      );
  Future<dynamic> getProfileLevelInfo();
}