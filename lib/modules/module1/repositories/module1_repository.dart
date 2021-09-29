import 'package:either_dart/either.dart';
import 'package:project_structure_xcelpros/core/local_storage.dart';
import 'package:project_structure_xcelpros/core/network_utils.dart';
import 'package:project_structure_xcelpros/modules/module1/models/data_model.dart';

class Module1Repository {
  final NetworkUtils _networkUtils;
  final LocalStorage _localStorage;

  Module1Repository(
      {required LocalStorage localStorage, required NetworkUtils networkUtils})
      : _networkUtils = networkUtils,
        _localStorage = localStorage;

  Future<Either<String, DataModel>> getNetworkData() async {
    try {
      return Right(
          DataModel.fromJson(await _networkUtils.getNetworkResponse()));
    } catch (_) {
      return const Left("FAILED REASON");
    }
  }

  Future<Either<String, DataModel>> getLocalData() async {
    try {
      return Right(DataModel.fromJson(await _localStorage.getLocal()));
    } catch (_) {
      return const Left("FAILED REASON");
    }
  }
}
