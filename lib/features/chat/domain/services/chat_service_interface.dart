import 'package:file_picker/file_picker.dart';
import 'package:nrideapp/data/api_client.dart';

abstract class ChatServiceInterface {

  Future<dynamic> createChannel(String userId,String tripId);
  Future<dynamic> getChannelList(int offset);
  Future<dynamic> getConversation(String channelId,int offset);
  Future<dynamic> sendMessage(String message,String channelID, String tripId,  List<MultipartBody> file, PlatformFile? platformFile);
  Future<dynamic> findChannelRideStatus(String channelId);
}