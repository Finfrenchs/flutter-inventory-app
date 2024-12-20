import 'dart:convert';

import 'warehouse_response_model.dart';

class WarehouseStockAddResponseModel {
  final String? status;
  final String? message;
  final Warehouse? data;

  WarehouseStockAddResponseModel({
    this.status,
    this.message,
    this.data,
  });

  factory WarehouseStockAddResponseModel.fromJson(String str) =>
      WarehouseStockAddResponseModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory WarehouseStockAddResponseModel.fromMap(Map<String, dynamic> json) =>
      WarehouseStockAddResponseModel(
        status: json["status"],
        message: json["message"],
        data: json["data"] == null ? null : Warehouse.fromMap(json["data"]),
      );

  Map<String, dynamic> toMap() => {
        "status": status,
        "message": message,
        "data": data?.toMap(),
      };
}
