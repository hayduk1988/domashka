// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'passenger.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Passenger _$PassengerFromJson(Map<String, dynamic> json) => Passenger(
      id: json['id'] as int?,
      driverId: json['driverId'] as int?,
      name: json['name'] as String?,
      trips: (json['trips'] as List<dynamic>?)
          ?.map((e) => Trip.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PassengerToJson(Passenger instance) => <String, dynamic>{
      'id': instance.id,
      'driverId': instance.driverId,
      'trips': instance.trips,
      'name': instance.name,
    };

PassengerList _$PassengerListFromJson(Map<String, dynamic> json) =>
    PassengerList(
      passengerList: (json['passengerList'] as List<dynamic>?)
          ?.map((e) => Passenger.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PassengerListToJson(PassengerList instance) =>
    <String, dynamic>{
      'passengerList': instance.passengerList,
    };
