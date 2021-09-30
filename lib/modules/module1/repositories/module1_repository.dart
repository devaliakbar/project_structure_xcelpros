import 'package:either_dart/either.dart';
import 'package:project_structure_xcelpros/core/local_storage.dart';
import 'package:project_structure_xcelpros/core/network_utils.dart';
import 'package:project_structure_xcelpros/modules/module1/models/data_model.dart';

part 'module1_repository_base.dart';
part './sub/local_repository.dart';
part './sub/network_repository.dart';

class Module1Repository extends _Module1RepositoryBase
    with _NetworkRepository, _LocalRepository {
  Module1Repository(
      {required LocalStorage localStorage, required NetworkUtils networkUtils})
      : super(localStorage: localStorage, networkUtils: networkUtils);
}
