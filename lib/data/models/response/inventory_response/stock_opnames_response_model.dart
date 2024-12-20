import 'dart:convert';

import 'product_response_model.dart';
import 'warehouse_response_model.dart';

class StockOpnamesResponseModel {
  final String? status;
  final String? message;
  final List<StockOpname>? data;

  StockOpnamesResponseModel({
    this.status,
    this.message,
    this.data,
  });

  factory StockOpnamesResponseModel.fromJson(String str) =>
      StockOpnamesResponseModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory StockOpnamesResponseModel.fromMap(Map<String, dynamic> json) =>
      StockOpnamesResponseModel(
        status: json["status"],
        message: json["message"],
        data: json["data"] == null
            ? []
            : List<StockOpname>.from(
                json["data"]!.map((x) => StockOpname.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "status": status,
        "message": message,
        "data":
            data == null ? [] : List<dynamic>.from(data!.map((x) => x.toMap())),
      };
}

class StockOpname {
  final int? id;
  final int? productId;
  final int? warehouseId;
  final int? systemStock;
  final int? physicalStock;
  final String? note;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final dynamic deviation;
  final Product? product;
  final Warehouse? warehouse;

  StockOpname({
    this.id,
    this.productId,
    this.warehouseId,
    this.systemStock,
    this.physicalStock,
    this.note,
    this.createdAt,
    this.updatedAt,
    this.deviation,
    this.product,
    this.warehouse,
  });

  factory StockOpname.fromJson(String str) =>
      StockOpname.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory StockOpname.fromMap(Map<String, dynamic> json) => StockOpname(
        id: json["id"],
        productId: json["product_id"],
        warehouseId: json["warehouse_id"],
        systemStock: json["system_stock"],
        physicalStock: json["physical_stock"],
        note: json["note"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
        deviation: _parseDeviation(json["deviation"]),
        product:
            json["product"] == null ? null : Product.fromMap(json["product"]),
        warehouse: json["warehouse"] == null
            ? null
            : Warehouse.fromMap(json["warehouse"]),
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "product_id": productId,
        "warehouse_id": warehouseId,
        "system_stock": systemStock,
        "physical_stock": physicalStock,
        "note": note,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
        "deviation": deviation.toString(),
        "product": product?.toMap(),
        "warehouse": warehouse?.toMap(),
      };

  static dynamic _parseDeviation(dynamic deviation) {
    if (deviation is int) {
      return deviation; // Jika integer, langsung return
    } else if (deviation is String) {
      // Jika string, cek apakah dapat dikonversi ke integer
      final parsedValue = int.tryParse(deviation);
      return parsedValue ?? deviation; // Jika gagal, kembalikan string asli
    }
    return deviation; // Default return
  }
}

// class Product {
//   final int? id;
//   final String? name;
//   final String? slug;
//   final String? description;
//   final dynamic image;
//   final int? categoryId;
//   final int? brandId;
//   final int? unitId;
//   final int? companyId;
//   final int? warehouseId;
//   final String? price;
//   final int? stock;
//   final int? alertStock;
//   final int? status;
//   final String? itemCode;
//   final DateTime? createdAt;
//   final DateTime? updatedAt;
//   final dynamic photo;

//   Product({
//     this.id,
//     this.name,
//     this.slug,
//     this.description,
//     this.image,
//     this.categoryId,
//     this.brandId,
//     this.unitId,
//     this.companyId,
//     this.warehouseId,
//     this.price,
//     this.stock,
//     this.alertStock,
//     this.status,
//     this.itemCode,
//     this.createdAt,
//     this.updatedAt,
//     this.photo,
//   });

//   factory Product.fromJson(String str) => Product.fromMap(json.decode(str));

//   String toJson() => json.encode(toMap());

//   factory Product.fromMap(Map<String, dynamic> json) => Product(
//         id: json["id"],
//         name: json["name"],
//         slug: json["slug"],
//         description: json["description"],
//         image: json["image"],
//         categoryId: json["category_id"],
//         brandId: json["brand_id"],
//         unitId: json["unit_id"],
//         companyId: json["company_id"],
//         warehouseId: json["warehouse_id"],
//         price: json["price"],
//         stock: json["stock"],
//         alertStock: json["alert_stock"],
//         status: json["status"],
//         itemCode: json["item_code"],
//         createdAt: json["created_at"] == null
//             ? null
//             : DateTime.parse(json["created_at"]),
//         updatedAt: json["updated_at"] == null
//             ? null
//             : DateTime.parse(json["updated_at"]),
//         photo: json["photo"],
//       );

//   Map<String, dynamic> toMap() => {
//         "id": id,
//         "name": name,
//         "slug": slug,
//         "description": description,
//         "image": image,
//         "category_id": categoryId,
//         "brand_id": brandId,
//         "unit_id": unitId,
//         "company_id": companyId,
//         "warehouse_id": warehouseId,
//         "price": price,
//         "stock": stock,
//         "alert_stock": alertStock,
//         "status": status,
//         "item_code": itemCode,
//         "created_at": createdAt?.toIso8601String(),
//         "updated_at": updatedAt?.toIso8601String(),
//         "photo": photo,
//       };
// }

// class Warehouse {
//   final int? id;
//   final String? name;
//   final String? slug;
//   final dynamic description;
//   final String? address;
//   final String? phone;
//   final String? email;
//   final dynamic contactPerson;
//   final int? companyId;
//   final DateTime? createdAt;
//   final DateTime? updatedAt;

//   Warehouse({
//     this.id,
//     this.name,
//     this.slug,
//     this.description,
//     this.address,
//     this.phone,
//     this.email,
//     this.contactPerson,
//     this.companyId,
//     this.createdAt,
//     this.updatedAt,
//   });

//   factory Warehouse.fromJson(String str) => Warehouse.fromMap(json.decode(str));

//   String toJson() => json.encode(toMap());

//   factory Warehouse.fromMap(Map<String, dynamic> json) => Warehouse(
//         id: json["id"],
//         name: json["name"],
//         slug: json["slug"],
//         description: json["description"],
//         address: json["address"],
//         phone: json["phone"],
//         email: json["email"],
//         contactPerson: json["contact_person"],
//         companyId: json["company_id"],
//         createdAt: json["created_at"] == null
//             ? null
//             : DateTime.parse(json["created_at"]),
//         updatedAt: json["updated_at"] == null
//             ? null
//             : DateTime.parse(json["updated_at"]),
//       );

//   Map<String, dynamic> toMap() => {
//         "id": id,
//         "name": name,
//         "slug": slug,
//         "description": description,
//         "address": address,
//         "phone": phone,
//         "email": email,
//         "contact_person": contactPerson,
//         "company_id": companyId,
//         "created_at": createdAt?.toIso8601String(),
//         "updated_at": updatedAt?.toIso8601String(),
//       };
// }
