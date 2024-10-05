import 'package:get/get.dart';
import 'package:nrideapp/data/api_checker.dart';
import 'package:nrideapp/features/notification/domain/models/notification_model.dart';
import 'package:nrideapp/features/notification/domain/services/notification_service_interface.dart';

class NotificationController extends GetxController implements GetxService{
  final NotificationServiceInterface notificationServiceInterface;

  NotificationController({required this.notificationServiceInterface});


  List<String> notificationTypeList = ['activity', 'offer', 'news'];
  int _notificationTypeIndex = 0;
  int get notificationTypeIndex => _notificationTypeIndex;


  void setNotificationIndex(int index){
    _notificationTypeIndex = index;
    update();
  }

  bool isLoading = false;
  NotificationsModel? notificationModel;


  Future<void> getNotificationList(int offset, {bool reload = false}) async {
    isLoading = true;
    Response response = await notificationServiceInterface.getNotificationList(offset);
    if (response.statusCode == 200) {
      if(offset == 1){
        notificationModel = NotificationsModel.fromJson(response.body);
      }else{
        notificationModel!.data!.addAll(NotificationsModel.fromJson(response.body).data!);
        notificationModel!.offset = NotificationsModel.fromJson(response.body).offset;
        notificationModel!.totalSize = NotificationsModel.fromJson(response.body).totalSize;
      }
      isLoading = false;
    } else {
      isLoading = false;
      ApiChecker.checkApi(response);
    }
    update();
  }

}