import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;

import '../../../core/core.dart';
import '../../models/response/inventory_response/warehouse_response_model.dart';
import '../auth_local_data_source.dart';

class WarehouseRemoteDatasource {
  Future<Either<String, String>> add(
    String name,
    String address,
    String phone,
    String email,
  ) async {
    final authData = await AuthLocalDataSource().getAuthData();
    final url = Uri.parse('${Variables.baseUrl}/api/warehouses');
    final header = {
      'Accept': 'application/json',
      'content-type': 'application/json',
      'Authorization': 'Bearer ${authData!.accessToken}',
    };

    final response = await http.post(
      url,
      headers: header,
      body: jsonEncode({
        'name': name,
        'address': address,
        'phone': phone,
        'email': email,
      }),
    );
    if (response.statusCode == 201) {
      return const Right('Warehouse added successfully');
    } else {
      return Left(response.reasonPhrase ?? 'Failed to add Warehouse');
    }
  }

  //get all brands
  Future<Either<String, WarehouseResponseModel>> getAll() async {
    final authData = await AuthLocalDataSource().getAuthData();
    final url = Uri.parse('${Variables.baseUrl}/api/warehouses');
    final header = {
      'Accept': 'application/json',
      'Content-Type': 'application/json',
      'Authorization': 'Bearer ${authData!.accessToken}',
    };

    final response = await http.get(url, headers: header);

    if (response.statusCode == 200) {
      return Right(WarehouseResponseModel.fromJson(response.body));
    } else {
      return Left(response.reasonPhrase ?? 'Failed to get Warehouse');
    }
  }

  //delete brand
  Future<Either<String, String>> delete(int id) async {
    final authData = await AuthLocalDataSource().getAuthData();
    final url = Uri.parse('${Variables.baseUrl}/api/warehouses/$id');
    final header = {
      'Accept': 'application/json',
      'Authorization': 'Bearer ${authData!.accessToken}',
    };

    final response = await http.delete(url, headers: header);

    if (response.statusCode == 200) {
      return const Right('units deleted successfully');
    } else {
      return Left(response.reasonPhrase ?? 'Failed to delete Warehouse');
    }
  }

  //edit brand
  Future<Either<String, String>> edit(
    int id,
    String name,
    String address,
    String phone,
    String email,
  ) async {
    final authData = await AuthLocalDataSource().getAuthData();
    final url = Uri.parse('${Variables.baseUrl}/api/warehouses/$id');
    final header = {
      'Accept': 'application/json',
      'Authorization': 'Bearer ${authData!.accessToken}',
    };

    final response = await http.put(url, headers: header, body: {
      'name': name,
      'address': address,
      'phone': phone,
      'email': email,
    });
    if (response.statusCode == 200) {
      return const Right('Warehouse updated successfully');
    } else {
      return Left(response.reasonPhrase ?? 'Failed to update Warehouse');
    }
  }
}
