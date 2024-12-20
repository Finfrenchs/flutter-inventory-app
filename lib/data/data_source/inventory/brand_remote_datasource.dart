import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:image_picker/image_picker.dart';

import '../../../core/core.dart';
import '../../models/response/inventory_response/brands_response_model.dart';
import '../auth_local_data_source.dart';

class BrandRemoteDatasource {
  Future<Either<String, String>> addBrand(String name, XFile image) async {
    final authData = await AuthLocalDataSource().getAuthData();
    final url = Uri.parse('${Variables.baseUrl}/api/brands');
    final header = {
      'Accept': 'application/json',
      'Authorization': 'Bearer ${authData!.accessToken}',
    };

    final request = http.MultipartRequest('POST', url)
      ..headers.addAll(header)
      ..fields['name'] = name
      ..files.add(http.MultipartFile.fromBytes(
          'image', await image.readAsBytes(),
          filename: image.name));

    final response = await request.send();
    if (response.statusCode == 201) {
      return const Right('Brand added successfully');
    } else {
      return Left(response.reasonPhrase ?? 'Failed to add brand');
    }
  }

  //get all brands
  Future<Either<String, BrandsResponseModel>> getBrands() async {
    final authData = await AuthLocalDataSource().getAuthData();
    final url = Uri.parse('${Variables.baseUrl}/api/brands');
    final header = {
      'Accept': 'application/json',
      'Content-Type': 'application/json',
      'Authorization': 'Bearer ${authData!.accessToken}',
    };

    final response = await http.get(url, headers: header);

    if (response.statusCode == 200) {
      return Right(BrandsResponseModel.fromJson(response.body));
    } else {
      return Left(response.reasonPhrase ?? 'Failed to get brands');
    }
  }

  //delete brand
  Future<Either<String, String>> deleteBrand(int id) async {
    final authData = await AuthLocalDataSource().getAuthData();
    final url = Uri.parse('${Variables.baseUrl}/api/brands/$id');
    final header = {
      'Accept': 'application/json',
      'Authorization': 'Bearer ${authData!.accessToken}',
    };

    final response = await http.delete(url, headers: header);

    if (response.statusCode == 200) {
      return const Right('Brand deleted successfully');
    } else {
      return Left(response.reasonPhrase ?? 'Failed to delete brand');
    }
  }

  //edit brand
  Future<Either<String, String>> editBrand(
      int id, String name, XFile? image) async {
    final authData = await AuthLocalDataSource().getAuthData();
    final url = Uri.parse('${Variables.baseUrl}/api/brands/$id');
    final header = {
      'Accept': 'application/json',
      'Authorization': 'Bearer ${authData!.accessToken}',
    };

    if (image == null) {
      final response = await http.put(url, headers: header, body: {
        'name': name,
      });

      if (response.statusCode == 200) {
        return const Right('Brand updated successfully');
      } else {
        return Left(response.reasonPhrase ?? 'Failed to update brand');
      }
    } else {
      final request = http.MultipartRequest('POST', url)
        ..headers.addAll(header)
        ..fields['name'] = name
        ..files.add(http.MultipartFile.fromBytes(
            'image', await image.readAsBytes(),
            filename: image.name));

      final response = await request.send();
      if (response.statusCode == 200) {
        return const Right('Brand updated successfully');
      } else {
        return Left(response.reasonPhrase ?? 'Failed to update brand');
      }
    }
  }
}
