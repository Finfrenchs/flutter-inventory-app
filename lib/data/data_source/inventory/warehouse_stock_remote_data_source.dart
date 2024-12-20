import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;

import '../../../core/core.dart';
import '../../models/request/inventory_request/warehouse_stock_request_model.dart';
import '../../models/response/inventory_response/warehoue_stock_add_reponse_model.dart';
import '../../models/response/inventory_response/warehouse_stock_response_model.dart';
import '../auth_local_data_source.dart';

class WarehouseStockRemoteDataSource {
  Future<Either<String, WarehouseStockAddResponseModel>> add(
      WarehouseStockRequestModel dataReq) async {
    final authData = await AuthLocalDataSource().getAuthData();
    final url = Uri.parse('${Variables.baseUrl}/api/warehouse-stocks');
    final header = {
      'Accept': 'application/json',
      'content-type': 'application/json',
      'Authorization': 'Bearer ${authData!.accessToken}',
    };

    final response = await http.post(
      url,
      headers: header,
      body: dataReq.toJson(),
    );
    if (response.statusCode == 201) {
      return Right(WarehouseStockAddResponseModel.fromJson(response.body));
    } else {
      return Left(response.reasonPhrase ?? 'Failed to add Warehouse');
    }
  }

  //get all brands
  Future<Either<String, WarehouseStockResponseModel>> getAll() async {
    final authData = await AuthLocalDataSource().getAuthData();
    final url = Uri.parse('${Variables.baseUrl}/api/warehouse-stocks');
    final header = {
      'Accept': 'application/json',
      'Content-Type': 'application/json',
      'Authorization': 'Bearer ${authData!.accessToken}',
    };

    final response = await http.get(url, headers: header);

    if (response.statusCode == 200) {
      return Right(WarehouseStockResponseModel.fromJson(response.body));
    } else {
      return Left(response.reasonPhrase ?? 'Failed to get Warehouse');
    }
  }
}
