import 'package:domashka/models/trip.dart';
import 'package:flutter/cupertino.dart';
import 'package:json_annotation/json_annotation.dart';
part 'driver.g.dart';

Driver deserializeDriver(Map<String, dynamic> json) => Driver.fromJson(json);

Map<String, dynamic> serializeDriver(Driver object) => object.toJson();

@immutable
@JsonSerializable()
class Driver {
  const Driver({
    this.id,
    this.adminId,
    this.name,
    this.trips,
  });

  final int? id;
  final int? adminId;
  final List<Trip>? trips;
  final String? name;

  Driver copyWith({
    final int? id,
    final int? adminId,
    final List<Trip>? trips,
    final String? name,
  }) {
    return const Driver();
  }

  factory Driver.initial() {
    return const Driver();
  }

  factory Driver.fromJson(Map<String, dynamic> json) => _$DriverFromJson(json);

  Map<String, dynamic> toJson() => _$DriverToJson(this);
}
