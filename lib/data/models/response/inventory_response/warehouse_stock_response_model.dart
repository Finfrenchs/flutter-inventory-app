import 'dart:convert';

import 'product_response_model.dart';
import 'warehouse_response_model.dart';

class WarehouseStockResponseModel {
  final String? status;
  final String? message;
  final List<WarehouseStock>? data;

  WarehouseStockResponseModel({
    this.status,
    this.message,
    this.data,
  });

  factory WarehouseStockResponseModel.fromJson(String str) =>
      WarehouseStockResponseModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory WarehouseStockResponseModel.fromMap(Map<String, dynamic> json) =>
      WarehouseStockResponseModel(
        status: json["status"],
        message: json["message"],
        data: json["data"] == null
            ? []
            : List<WarehouseStock>.from(
                json["data"]!.map((x) => WarehouseStock.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "status": status,
        "message": message,
        "data":
            data == null ? [] : List<dynamic>.from(data!.map((x) => x.toMap())),
      };
}

class WarehouseStock {
  final int? id;
  final int? warehouseId;
  final int? productId;
  final int? stock;
  final DateTime? dateStock;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final Product? product;
  final Warehouse? warehouse;

  WarehouseStock({
    this.id,
    this.warehouseId,
    this.productId,
    this.stock,
    this.dateStock,
    this.createdAt,
    this.updatedAt,
    this.product,
    this.warehouse,
  });

  factory WarehouseStock.fromJson(String str) =>
      WarehouseStock.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory WarehouseStock.fromMap(Map<String, dynamic> json) => WarehouseStock(
        id: json["id"],
        warehouseId: json["warehouse_id"],
        productId: json["product_id"],
        stock: json["stock"],
        dateStock: json["date_stock"] == null
            ? null
            : DateTime.parse(json["date_stock"]),
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
        product:
            json["product"] == null ? null : Product.fromMap(json["product"]),
        warehouse: json["warehouse"] == null
            ? null
            : Warehouse.fromMap(json["warehouse"]),
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "warehouse_id": warehouseId,
        "product_id": productId,
        "stock": stock,
        "date_stock":
            "${dateStock!.year.toString().padLeft(4, '0')}-${dateStock!.month.toString().padLeft(2, '0')}-${dateStock!.day.toString().padLeft(2, '0')}",
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
        "product": product?.toMap(),
        "warehouse": warehouse?.toMap(),
      };
}
