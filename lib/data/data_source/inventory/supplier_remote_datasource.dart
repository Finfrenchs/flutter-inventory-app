import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;

import '../../../core/core.dart';
import '../../models/response/inventory_response/supplier_response_model.dart';
import '../auth_local_data_source.dart';

class SupplierRemoteDatasource {
  Future<Either<String, String>> add(
    String name,
    String phone,
    String address,
    String email,
  ) async {
    final authData = await AuthLocalDataSource().getAuthData();
    final url = Uri.parse('${Variables.baseUrl}/api/suppliers');
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
        'phone': phone,
        'address': address,
        'email': email,
      }),
    );
    if (response.statusCode == 201) {
      return const Right('Supplier added successfully');
    } else {
      return Left(response.reasonPhrase ?? 'Failed to add Supplier');
    }
  }

  //get all supplier
  Future<Either<String, SupplierResponseModel>> getSuppliers() async {
    final authData = await AuthLocalDataSource().getAuthData();
    final url = Uri.parse('${Variables.baseUrl}/api/suppliers');
    final header = {
      'Accept': 'application/json',
      'Content-Type': 'application/json',
      'Authorization': 'Bearer ${authData!.accessToken}',
    };

    final response = await http.get(url, headers: header);

    if (response.statusCode == 200) {
      return Right(SupplierResponseModel.fromJson(response.body));
    } else {
      return Left(response.reasonPhrase ?? 'Failed to get suppliers');
    }
  }

  //delete brand
  Future<Either<String, String>> delete(int id) async {
    final authData = await AuthLocalDataSource().getAuthData();
    final url = Uri.parse('${Variables.baseUrl}/api/suppliers/$id');
    final header = {
      'Accept': 'application/json',
      'Authorization': 'Bearer ${authData!.accessToken}',
    };

    final response = await http.delete(url, headers: header);

    if (response.statusCode == 200) {
      return const Right('suppliers deleted successfully');
    } else {
      return Left(response.reasonPhrase ?? 'Failed to delete suppliers');
    }
  }

  //edit brand
  Future<Either<String, String>> edit(
    int id,
    String name,
    String phone,
    String address,
    String email,
  ) async {
    final authData = await AuthLocalDataSource().getAuthData();
    final url = Uri.parse('${Variables.baseUrl}/api/suppliers/$id');
    final header = {
      'Accept': 'application/json',
      'Authorization': 'Bearer ${authData!.accessToken}',
    };

    final response = await http.put(url, headers: header, body: {
      'name': name,
      'phone': phone,
      'address': address,
      'email': email,
    });
    if (response.statusCode == 200) {
      return const Right('suppliers updated successfully');
    } else {
      return Left(response.reasonPhrase ?? 'Failed to update suppliers');
    }
  }
}
