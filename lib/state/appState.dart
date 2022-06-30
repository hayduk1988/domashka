import 'package:domashka/models/admin.dart';
import 'package:domashka/models/passenger.dart';
import 'package:domashka/models/trip.dart';
import 'package:flutter/cupertino.dart';
import 'package:json_annotation/json_annotation.dart';
import '../models/driver.dart';

part 'appState.g.dart';

@immutable
@JsonSerializable()
class AppState {
  final String? serverUrl;
  final bool? isMock;
  final Admin admin;
  final Driver driver;
  final TripList trips;
  final PassengerList passengers;

  factory AppState.fromJson(Map<String, dynamic> json) =>
      _$AppStateFromJson(json);

  Map<String, dynamic> toJson() => _$AppStateToJson(this);

  static AppState fromPersistedJson(dynamic json) {
    if (json == null) return AppState.initial();
    return AppState.fromJson(json);
  }

  AppState({
    this.isMock,
    this.serverUrl,
    required this.admin,
    required this.driver,
    required this.trips,
    required this.passengers,
  });

  factory AppState.initial() {
    return AppState(
      serverUrl: '',
      isMock: true,
      admin: Admin.initial(),
      driver: Driver.initial(),
      passengers: PassengerList.initial(),
      trips: TripList.initial(),
    );
  }
}
