import 'dart:convert';

class WarehouseStockRequestModel {
  final int? warehouseId;
  final int? productId;
  final int? stock;

  WarehouseStockRequestModel({
    this.warehouseId,
    this.productId,
    this.stock,
  });

  factory WarehouseStockRequestModel.fromJson(String str) =>
      WarehouseStockRequestModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory WarehouseStockRequestModel.fromMap(Map<String, dynamic> json) =>
      WarehouseStockRequestModel(
        warehouseId: json["warehouse_id"],
        productId: json["product_id"],
        stock: json["stock"],
      );

  Map<String, dynamic> toMap() => {
        "warehouse_id": warehouseId,
        "product_id": productId,
        "stock": stock,
      };
}
