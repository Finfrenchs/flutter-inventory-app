import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;

import '../../../core/core.dart';
import '../../models/response/inventory_response/unit_response_model.dart';
import '../auth_local_data_source.dart';

class UnitRemoteDatasource {
  Future<Either<String, String>> add(String name, String shortName) async {
    final authData = await AuthLocalDataSource().getAuthData();
    final url = Uri.parse('${Variables.baseUrl}/api/units');
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
        'short_name': shortName,
      }),
    );
    if (response.statusCode == 201) {
      return const Right('Brand added successfully');
    } else {
      return Left(response.reasonPhrase ?? 'Failed to add brand');
    }
  }

  //get all brands
  Future<Either<String, UnitResponseModel>> getUnits() async {
    final authData = await AuthLocalDataSource().getAuthData();
    final url = Uri.parse('${Variables.baseUrl}/api/units');
    final header = {
      'Accept': 'application/json',
      'Content-Type': 'application/json',
      'Authorization': 'Bearer ${authData!.accessToken}',
    };

    final response = await http.get(url, headers: header);

    if (response.statusCode == 200) {
      return Right(UnitResponseModel.fromJson(response.body));
    } else {
      return Left(response.reasonPhrase ?? 'Failed to get units');
    }
  }

  //delete brand
  Future<Either<String, String>> delete(int id) async {
    final authData = await AuthLocalDataSource().getAuthData();
    final url = Uri.parse('${Variables.baseUrl}/api/units/$id');
    final header = {
      'Accept': 'application/json',
      'Authorization': 'Bearer ${authData!.accessToken}',
    };

    final response = await http.delete(url, headers: header);

    if (response.statusCode == 200) {
      return const Right('units deleted successfully');
    } else {
      return Left(response.reasonPhrase ?? 'Failed to delete units');
    }
  }

  //edit brand
  Future<Either<String, String>> edit(
      int id, String name, String shortName) async {
    final authData = await AuthLocalDataSource().getAuthData();
    final url = Uri.parse('${Variables.baseUrl}/api/units/$id');
    final header = {
      'Accept': 'application/json',
      'Authorization': 'Bearer ${authData!.accessToken}',
    };

    final response = await http.put(url, headers: header, body: {
      'name': name,
      'short_name': shortName,
    });
    if (response.statusCode == 200) {
      return const Right('units updated successfully');
    } else {
      return Left(response.reasonPhrase ?? 'Failed to update units');
    }
  }
}
