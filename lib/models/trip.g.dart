// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trip.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Trip _$TripFromJson(Map<String, dynamic> json) => Trip(
      id: json['id'] as int?,
      rating: json['rating'] as int?,
      driverId: json['driverId'] as int?,
      tripId: json['tripId'] as int?,
      amount: (json['amount'] as num?)?.toDouble(),
      destination: json['destination'] as String?,
    );

Map<String, dynamic> _$TripToJson(Trip instance) => <String, dynamic>{
      'id': instance.id,
      'rating': instance.rating,
      'driverId': instance.driverId,
      'tripId': instance.tripId,
      'amount': instance.amount,
      'destination': instance.destination,
    };

TripList _$TripListFromJson(Map<String, dynamic> json) => TripList(
      tripList: (json['tripList'] as List<dynamic>?)
          ?.map((e) => Trip.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TripListToJson(TripList instance) => <String, dynamic>{
      'tripList': instance.tripList,
    };
