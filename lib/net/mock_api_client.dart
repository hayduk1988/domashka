import 'package:domashka/models/trip.dart';
import 'package:domashka/models/passenger.dart';
import 'package:domashka/models/driver.dart';
import 'package:domashka/models/admin.dart';
import 'package:domashka/net/api_client.dart';
import 'package:redux/src/store.dart';
import 'package:domashka/state/appState.dart';

class MockRestClient implements RestClient {
  @override
  Future createDriver(String? name, int? adminId) {
    // TODO: implement createDriver
    throw UnimplementedError();
  }

  @override
  Future createTrip(int? driverId, String? destination, double? amount) {
    // TODO: implement createTrip
    throw UnimplementedError();
  }

  @override
  Future<Admin> getAdmin(int? id) {
    // TODO: implement getAdmin
    throw UnimplementedError();
  }

  @override
  Future<Driver> getDriver(int? driverId) {
    // TODO: implement getDriver
    throw UnimplementedError();
  }

  @override
  Future rateTrip(int? tripId, int? rating) {
    // TODO: implement rateTrip
    throw UnimplementedError();
  }

  @override
  Future<PassengerList> getPassengers(int? driverId) {
    // TODO: implement getPassengers
    throw UnimplementedError();
  }

  @override
  Future<TripList> getTrips({int? driverId, int? passenger}) {
    // TODO: implement getTrips
    throw UnimplementedError();
  }
}
