import 'dart:convert';

import 'purchase_response_model.dart';

class PurchaseAddResponseModel {
  final String? status;
  final String? message;
  final Purchase? data;

  PurchaseAddResponseModel({
    this.status,
    this.message,
    this.data,
  });

  factory PurchaseAddResponseModel.fromJson(String str) =>
      PurchaseAddResponseModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory PurchaseAddResponseModel.fromMap(Map<String, dynamic> json) =>
      PurchaseAddResponseModel(
        status: json["status"],
        message: json["message"],
        data: json["data"] == null ? null : Purchase.fromMap(json["data"]),
      );

  Map<String, dynamic> toMap() => {
        "status": status,
        "message": message,
        "data": data?.toMap(),
      };
}
