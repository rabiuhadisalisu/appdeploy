

import 'package:get/get_connect/http/src/response/response.dart';
import 'package:nrideapp/interface/repository_interface.dart';

abstract class TripRepositoryInterface implements RepositoryInterface {

  Future<Response> getTripList(String tripType, String from, String to, int offset, String filter);
  Future<Response> paymentSubmit(String tripId, String paymentMethod );
  Future<Response> getTripOverView(String filter);
  Future<dynamic> getTripOngoingAndAcceptedCancellationCauseList();
}