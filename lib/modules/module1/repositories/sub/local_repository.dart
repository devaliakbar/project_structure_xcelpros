part of '../module1_repository.dart';

mixin _LocalRepository on _Module1RepositoryBase {
  Future<Either<String, DataModel>> getLocalData() async {
    try {
      return Right(DataModel.fromJson(await _localStorage.getLocal()));
    } catch (_) {
      return const Left("FAILED REASON");
    }
  }
}
