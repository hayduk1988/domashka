import 'package:dio/dio.dart' as libDio;
import 'package:dio/dio.dart';
import 'package:domashka/models/admin.dart';
import 'package:domashka/models/driver.dart';
import 'package:domashka/models/passenger.dart';
import 'package:domashka/models/trip.dart';
import 'package:flutter/foundation.dart';
import 'package:redux/redux.dart';
import 'package:retrofit/http.dart';
import '../state/appState.dart';
import 'mock_api_client.dart';
import 'package:retrofit/retrofit.dart';
import 'package:flutter/foundation.dart';

part 'api_client.g.dart';

String? globalToken;

@RestApi(
  parser: Parser.FlutterCompute,
)
abstract class RestClient {
  factory RestClient(Dio dio, {String? baseUrl}) =>
      _RestClient(dio, baseUrl: baseUrl);

  @GET("/admin")
  Future<Admin> getAdmin(@Query('admin') int? id);

  @GET("/driver")
  Future<Driver> getDriver(@Query("driver") int? driverId);

  @GET("/trips")
  Future<TripList> getTrips({
    @Query("driver") int? driverId,
    @Query("passenger") int? passenger,
  });

  @GET("/passengers")
  Future<PassengerList> getPassengers(
    @Query("driver") int? driverId,
  );

  @POST("/createDriver")
  @FormUrlEncoded()
  Future createDriver(@Field() String? name, @Field() int? adminId);

  @POST("/createTrip")
  @FormUrlEncoded()
  Future createTrip(@Field() int? driverId, @Field() String? destination,
      @Field() double? amount);

  @POST("/rateTrip")
  @FormUrlEncoded()
  Future rateTrip(
    @Field() int? tripId,
    @Field() int? rating,
  );
}

RestClient? _client;
RestClient? _mockClient;

RestClient? apiClient(Store<AppState> store) {
  if (store.state.isMock == true) {
    _mockClient ??= MockRestClient();
    return _mockClient;
  } else {
    return _client;
  }
}

void updateRestClient(Store<AppState> store) {
  _createMobileClient(store);
}

RestClient _createMobileClient(Store<AppState> store) {
  final dio = libDio.Dio();
  dio.interceptors.add(libDio.InterceptorsWrapper(
      onResponse: (response, handler) {
        return handler.next(response);
      },
      onRequest: (RequestOptions options, handler) async {},
      onError: (error, handler) {
        return handler.next(error);
      }));

  return RestClient(dio, baseUrl: store.state.serverUrl);
}
