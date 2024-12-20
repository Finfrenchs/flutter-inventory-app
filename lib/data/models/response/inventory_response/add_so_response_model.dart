import 'dart:convert';

import 'stock_opnames_response_model.dart';

class AddSoResponseModel {
  final String? status;
  final String? message;
  final StockOpname? data;

  AddSoResponseModel({
    this.status,
    this.message,
    this.data,
  });

  factory AddSoResponseModel.fromJson(String str) =>
      AddSoResponseModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory AddSoResponseModel.fromMap(Map<String, dynamic> json) =>
      AddSoResponseModel(
        status: json["status"],
        message: json["message"],
        data: json["data"] == null ? null : StockOpname.fromMap(json["data"]),
      );

  Map<String, dynamic> toMap() => {
        "status": status,
        "message": message,
        "data": data?.toMap(),
      };
}
