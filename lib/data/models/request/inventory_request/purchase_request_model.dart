import 'dart:convert';

class PurchaseRequestModel {
  final String? invoiceNumber;
  final DateTime? invoiceDate;
  final int? supplierId;
  final int? total;
  final int? status;
  final String? note;
  final DateTime? dueDate;
  final List<PurchaseItem>? items;

  PurchaseRequestModel({
    this.invoiceNumber,
    this.invoiceDate,
    this.supplierId,
    this.total,
    this.status,
    this.note,
    this.dueDate,
    this.items,
  });

  factory PurchaseRequestModel.fromJson(String str) =>
      PurchaseRequestModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory PurchaseRequestModel.fromMap(Map<String, dynamic> json) =>
      PurchaseRequestModel(
        invoiceNumber: json["invoice_number"],
        invoiceDate: json["invoice_date"] == null
            ? null
            : DateTime.parse(json["invoice_date"]),
        supplierId: json["supplier_id"],
        total: json["total"],
        status: json["status"],
        note: json["note"],
        dueDate:
            json["due_date"] == null ? null : DateTime.parse(json["due_date"]),
        items: json["items"] == null
            ? []
            : List<PurchaseItem>.from(
                json["items"]!.map((x) => PurchaseItem.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "invoice_number": invoiceNumber,
        "invoice_date":
            "${invoiceDate!.year.toString().padLeft(4, '0')}-${invoiceDate!.month.toString().padLeft(2, '0')}-${invoiceDate!.day.toString().padLeft(2, '0')}",
        "supplier_id": supplierId,
        "total": total,
        "status": status,
        "note": note,
        "due_date":
            "${dueDate!.year.toString().padLeft(4, '0')}-${dueDate!.month.toString().padLeft(2, '0')}-${dueDate!.day.toString().padLeft(2, '0')}",
        "items": items == null
            ? []
            : List<dynamic>.from(items!.map((x) => x.toMap())),
      };
}

class PurchaseItem {
  final int? productId;
  final int? quantity;
  final int? price;

  PurchaseItem({
    this.productId,
    this.quantity,
    this.price,
  });

  factory PurchaseItem.fromJson(String str) =>
      PurchaseItem.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory PurchaseItem.fromMap(Map<String, dynamic> json) => PurchaseItem(
        productId: json["product_id"],
        quantity: json["quantity"],
        price: json["price"],
      );

  Map<String, dynamic> toMap() => {
        "product_id": productId,
        "quantity": quantity,
        "price": price,
      };
}
