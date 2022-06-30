import 'package:flutter/cupertino.dart';
import 'package:json_annotation/json_annotation.dart';
import 'driver.dart';
part 'admin.g.dart';

Admin deserializeAdmin(Map<String, dynamic> json) => Admin.fromJson(json);

Map<String, dynamic> serializeAdmin(Admin object) => object.toJson();

@immutable
@JsonSerializable()
class Admin {
  const Admin({
    this.id,
    this.name,
    this.drivers,
  });

  final int? id;
  final List<Driver>? drivers;
  final String? name;

  Admin copyWith({
    final int? id,
    final List<Driver>? drivers,
    final String? name,
  }) {
    return const Admin();
  }

  factory Admin.initial() {
    return const Admin();
  }

  factory Admin.fromJson(Map<String, dynamic> json) => _$AdminFromJson(json);

  Map<String, dynamic> toJson() => _$AdminToJson(this);
}
