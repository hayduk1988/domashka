import 'package:domashka/models/trip.dart';
import 'package:flutter/cupertino.dart';
import 'package:json_annotation/json_annotation.dart';
part 'passenger.g.dart';

Passenger deserializePassenger(Map<String, dynamic> json) =>
    Passenger.fromJson(json);

Map<String, dynamic> serializePassenger(Passenger object) => object.toJson();

@immutable
@JsonSerializable()
class Passenger {
  const Passenger({
    this.id,
    this.driverId,
    this.name,
    this.trips,
  });

  final int? id;
  final int? driverId;
  final List<Trip>? trips;
  final String? name;

  Passenger copyWith({
    final int? id,
    final int? driverId,
    final List<Trip>? trips,
    final String? name,
  }) {
    return const Passenger();
  }

  factory Passenger.initial() {
    return const Passenger();
  }

  factory Passenger.fromJson(Map<String, dynamic> json) =>
      _$PassengerFromJson(json);

  Map<String, dynamic> toJson() => _$PassengerToJson(this);
}

PassengerList deserializePassengerList(Map<String, dynamic> json) =>
    PassengerList.fromJson(json);

Map<String, dynamic> serializePassengerList(PassengerList object) =>
    object.toJson();

@immutable
@JsonSerializable()
class PassengerList {
  const PassengerList({this.passengerList});

  final List<Passenger>? passengerList;

  PassengerList copyWith({
    final List<Passenger>? passengerList,
  }) {
    return const PassengerList();
  }

  factory PassengerList.initial() {
    return const PassengerList();
  }

  factory PassengerList.fromJson(Map<String, dynamic> json) =>
      _$PassengerListFromJson(json);

  Map<String, dynamic> toJson() => _$PassengerListToJson(this);
}
