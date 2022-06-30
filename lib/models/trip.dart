import 'package:flutter/cupertino.dart';
import 'package:json_annotation/json_annotation.dart';
part 'trip.g.dart';

Trip deserializeTrip(Map<String, dynamic> json) => Trip.fromJson(json);

Map<String, dynamic> serializeTrip(Trip object) => object.toJson();

@immutable
@JsonSerializable()
class Trip {
  const Trip({
    this.id,
    this.rating,
    this.driverId,
    this.tripId,
    this.amount,
    this.destination,
  });

  final int? id;
  final int? rating;
  final int? driverId;
  final int? tripId;
  final double? amount;
  final String? destination;

  Trip copyWith({
    final int? id,
    final int? rating,
    final int? driverId,
    final int? tripId,
    final double? amount,
    final String? destination,
  }) {
    return const Trip();
  }

  factory Trip.initial() {
    return const Trip();
  }

  factory Trip.fromJson(Map<String, dynamic> json) => _$TripFromJson(json);

  Map<String, dynamic> toJson() => _$TripToJson(this);
}

TripList deserializeTripList(Map<String, dynamic> json) =>
    TripList.fromJson(json);

Map<String, dynamic> serializeTripList(TripList object) => object.toJson();

@immutable
@JsonSerializable()
class TripList {
  const TripList({this.tripList});

  final List<Trip>? tripList;

  TripList copyWith({
    final List<Trip>? tripList,
  }) {
    return const TripList();
  }

  factory TripList.initial() {
    return const TripList();
  }

  factory TripList.fromJson(Map<String, dynamic> json) =>
      _$TripListFromJson(json);

  Map<String, dynamic> toJson() => _$TripListToJson(this);
}
