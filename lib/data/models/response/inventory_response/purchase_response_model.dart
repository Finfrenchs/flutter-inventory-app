import 'dart:convert';

import 'product_response_model.dart';
import 'supplier_response_model.dart';

class PurchaseResponseModel {
  final String? status;
  final String? message;
  final List<Purchase>? data;

  PurchaseResponseModel({
    this.status,
    this.message,
    this.data,
  });

  factory PurchaseResponseModel.fromJson(String str) =>
      PurchaseResponseModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory PurchaseResponseModel.fromMap(Map<String, dynamic> json) =>
      PurchaseResponseModel(
        status: json["status"],
        message: json["message"],
        data: json["data"] == null
            ? []
            : List<Purchase>.from(
                json["data"]!.map((x) => Purchase.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "status": status,
        "message": message,
        "data":
            data == null ? [] : List<dynamic>.from(data!.map((x) => x.toMap())),
      };
}

class Purchase {
  final int? id;
  final String? invoiceNumber;
  final DateTime? invoiceDate;
  final dynamic total;
  final int? status;
  final String? note;
  final DateTime? dueDate;
  final int? supplierId;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final Supplier? supplier;
  final List<Item>? items;

  Purchase({
    this.id,
    this.invoiceNumber,
    this.invoiceDate,
    this.total,
    this.status,
    this.note,
    this.dueDate,
    this.supplierId,
    this.createdAt,
    this.updatedAt,
    this.supplier,
    this.items,
  });

  factory Purchase.fromJson(String str) => Purchase.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Purchase.fromMap(Map<String, dynamic> json) => Purchase(
        id: json["id"],
        invoiceNumber: json["invoice_number"],
        invoiceDate: json["invoice_date"] == null
            ? null
            : DateTime.parse(json["invoice_date"]),
        total: _parseTotal(json["total"]),
        status: json["status"],
        note: json["note"],
        dueDate:
            json["due_date"] == null ? null : DateTime.parse(json["due_date"]),
        supplierId: json["supplier_id"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
        supplier: json["supplier"] == null
            ? null
            : Supplier.fromMap(json["supplier"]),
        items: json["items"] == null
            ? []
            : List<Item>.from(json["items"]!.map((x) => Item.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "invoice_number": invoiceNumber,
        "invoice_date":
            "${invoiceDate!.year.toString().padLeft(4, '0')}-${invoiceDate!.month.toString().padLeft(2, '0')}-${invoiceDate!.day.toString().padLeft(2, '0')}",
        "total": total.toString(),
        "status": status,
        "note": note,
        "due_date":
            "${dueDate!.year.toString().padLeft(4, '0')}-${dueDate!.month.toString().padLeft(2, '0')}-${dueDate!.day.toString().padLeft(2, '0')}",
        "supplier_id": supplierId,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
        "supplier": supplier?.toMap(),
        "items": items == null
            ? []
            : List<dynamic>.from(items!.map((x) => x.toMap())),
      };

  static dynamic _parseTotal(dynamic total) {
    if (total is int) {
      return total; // Jika integer, langsung return
    } else if (total is String) {
      // Jika string, cek apakah dapat dikonversi ke integer
      final parsedValue = int.tryParse(total);
      return parsedValue ?? total; // Jika gagal, kembalikan string asli
    }
    return total; // Default return
  }
}

class Item {
  final int? id;
  final int? purchaseId;
  final int? productId;
  final int? quantity;
  final String? price;
  final String? total;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final Product? product;

  Item({
    this.id,
    this.purchaseId,
    this.productId,
    this.quantity,
    this.price,
    this.total,
    this.createdAt,
    this.updatedAt,
    this.product,
  });

  factory Item.fromJson(String str) => Item.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Item.fromMap(Map<String, dynamic> json) => Item(
        id: json["id"],
        purchaseId: json["purchase_id"],
        productId: json["product_id"],
        quantity: json["quantity"],
        price: json["price"],
        total: json["total"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
        product:
            json["product"] == null ? null : Product.fromMap(json["product"]),
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "purchase_id": purchaseId,
        "product_id": productId,
        "quantity": quantity,
        "price": price,
        "total": total,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
        "product": product?.toMap(),
      };
}
