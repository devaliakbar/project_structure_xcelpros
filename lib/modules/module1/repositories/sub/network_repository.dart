part of '../module1_repository.dart';

mixin _NetworkRepository on _Module1RepositoryBase {
  Future<Either<String, DataModel>> getNetworkData() async {
    try {
      return Right(
          DataModel.fromJson(await _networkUtils.getNetworkResponse()));
    } catch (_) {
      return const Left("FAILED REASON");
    }
  }
}
