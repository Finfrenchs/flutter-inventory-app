import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;

import '../../../core/core.dart';
import '../../models/response/inventory_response/add_so_response_model.dart';
import '../../models/response/inventory_response/stock_opnames_response_model.dart';
import '../auth_local_data_source.dart';

class StockOpnameRemoteDataSource {
  Future<Either<String, AddSoResponseModel>> add({
    required int warehouseId,
    required int productId,
    required int systemStock,
    required int physicalStock,
    required int categoryId,
    required String note,
  }) async {
    final authData = await AuthLocalDataSource().getAuthData();
    final url = Uri.parse('${Variables.baseUrl}/api/stock-opname');
    final header = {
      'Accept': 'application/json',
      'content-type': 'application/json',
      'Authorization': 'Bearer ${authData!.accessToken}',
    };

    final response = await http.post(
      url,
      headers: header,
      body: jsonEncode({
        "warehouse_id": warehouseId,
        "product_id": productId,
        "system_stock": systemStock,
        "physical_stock": physicalStock,
        "note": note,
      }),
    );

    if (response.statusCode == 201) {
      return Right(AddSoResponseModel.fromJson(response.body));
    } else {
      return Left(response.reasonPhrase ?? 'Failed to add Stock Opname');
    }
  }

  //get all SO
  Future<Either<String, StockOpnamesResponseModel>> getAll() async {
    final authData = await AuthLocalDataSource().getAuthData();
    final url = Uri.parse('${Variables.baseUrl}/api/stock-opname');
    final header = {
      'Accept': 'application/json',
      'Content-Type': 'application/json',
      'Authorization': 'Bearer ${authData!.accessToken}',
    };

    final response = await http.get(url, headers: header);

    if (response.statusCode == 200) {
      return Right(StockOpnamesResponseModel.fromJson(response.body));
    } else {
      return Left(response.reasonPhrase ?? 'Failed to get stock opname');
    }
  }

  //delete so
  Future<Either<String, String>> delete({required int id}) async {
    final authData = await AuthLocalDataSource().getAuthData();
    final url = Uri.parse('${Variables.baseUrl}/api/stock-opname/$id');
    final header = {
      'Accept': 'application/json',
      'Authorization': 'Bearer ${authData!.accessToken}',
    };

    final response = await http.delete(url, headers: header);

    if (response.statusCode == 200) {
      return const Right('stock opname deleted successfully');
    } else {
      return Left(response.reasonPhrase ?? 'Failed to delete stock opname');
    }
  }

  //edit so
  Future<Either<String, AddSoResponseModel>> edit({
    required int id,
    required String note,
  }) async {
    final authData = await AuthLocalDataSource().getAuthData();
    final url = Uri.parse('${Variables.baseUrl}/api/stock-opname/$id');
    final header = {
      'Accept': 'application/json',
      'content-type': 'application/json',
      'Authorization': 'Bearer ${authData!.accessToken}',
    };

    final response = await http.put(
      url,
      headers: header,
      body: jsonEncode({
        "note": note,
      }),
    );

    if (response.statusCode == 200) {
      return Right(AddSoResponseModel.fromJson(response.body));
    } else {
      return Left(response.reasonPhrase ?? 'Failed to update stock opname');
    }
  }
}
