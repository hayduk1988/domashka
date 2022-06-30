// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'appState.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AppState _$AppStateFromJson(Map<String, dynamic> json) => AppState(
      isMock: json['isMock'] as bool?,
      serverUrl: json['serverUrl'] as String?,
      admin: Admin.fromJson(json['admin'] as Map<String, dynamic>),
      driver: Driver.fromJson(json['driver'] as Map<String, dynamic>),
      trips: TripList.fromJson(json['trips'] as Map<String, dynamic>),
      passengers:
          PassengerList.fromJson(json['passengers'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AppStateToJson(AppState instance) => <String, dynamic>{
      'serverUrl': instance.serverUrl,
      'isMock': instance.isMock,
      'admin': instance.admin,
      'driver': instance.driver,
      'trips': instance.trips,
      'passengers': instance.passengers,
    };
