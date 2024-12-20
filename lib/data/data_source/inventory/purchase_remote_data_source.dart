import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import '../../../core/core.dart';
import '../../models/response/inventory_response/product_response_model.dart';
import '../../models/response/inventory_response/purchase_add_response_model.dart';
import '../../models/response/inventory_response/purchase_response_model.dart';
import '../auth_local_data_source.dart';

class PurchaseRemoteDataSource {
  Future<Either<String, PurchaseAddResponseModel>> add({
    required String invoiceNumber,
    required DateTime invoiceDate,
    required int supplierId,
    required int totalPrice,
    required int status,
    required String note,
    required DateTime dueDate,
    required List<Product> items,
  }) async {
    final authData = await AuthLocalDataSource().getAuthData();
    final url = Uri.parse('${Variables.baseUrl}/api/purchases');
    final header = {
      'Accept': 'application/json',
      'content-type': 'application/json',
      'Authorization': 'Bearer ${authData!.accessToken}',
    };

    final response = await http.post(
      url,
      headers: header,
      body: jsonEncode({
        "invoice_number": invoiceNumber,
        "invoice_date": invoiceDate.toIso8601String(),
        "supplier_id": supplierId,
        "total": totalPrice,
        "status": status,
        "note": note,
        "due_date": dueDate.toIso8601String(),
        "items": items
            .map((item) => {
                  "product_id": item.id,
                  "price": item.price,
                  "quantity": item.quantity,
                })
            .toList(),
      }),
    );
    if (response.statusCode == 201) {
      return Right(PurchaseAddResponseModel.fromJson(response.body));
    } else {
      return Left(response.reasonPhrase ?? 'Failed to add Purchase');
    }
  }

  //get all brands
  Future<Either<String, PurchaseResponseModel>> getAll() async {
    final authData = await AuthLocalDataSource().getAuthData();
    final url = Uri.parse('${Variables.baseUrl}/api/purchases');
    final header = {
      'Accept': 'application/json',
      'Content-Type': 'application/json',
      'Authorization': 'Bearer ${authData!.accessToken}',
    };

    final response = await http.get(url, headers: header);

    if (response.statusCode == 200) {
      return Right(PurchaseResponseModel.fromJson(response.body));
    } else {
      return Left(response.reasonPhrase ?? 'Failed to get purchase');
    }
  }

  //delete brand
  Future<Either<String, String>> delete(int id) async {
    final authData = await AuthLocalDataSource().getAuthData();
    final url = Uri.parse('${Variables.baseUrl}/api/purchases/$id');
    final header = {
      'Accept': 'application/json',
      'Authorization': 'Bearer ${authData!.accessToken}',
    };

    final response = await http.delete(url, headers: header);

    if (response.statusCode == 200) {
      return const Right('purchase deleted successfully');
    } else {
      return Left(response.reasonPhrase ?? 'Failed to delete purchase');
    }
  }
}
