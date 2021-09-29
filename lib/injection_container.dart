import 'package:get_it/get_it.dart';
import 'package:project_structure_xcelpros/core/local_storage.dart';
import 'package:project_structure_xcelpros/core/network_utils.dart';
import 'package:project_structure_xcelpros/modules/module1/providers/home_provider.dart';
import 'package:project_structure_xcelpros/modules/module1/repositories/module1_repository.dart';

final sl = GetIt.instance;

Future<void> init() async {
  //! Core
  sl.registerLazySingleton<LocalStorage>(() => LocalStorage());
  sl.registerLazySingleton<NetworkUtils>(() => NetworkUtils());

  ///////////////////////////////////////////////////////////////////////////////////////////////////////////
  //! Module - Module1
  // Providers
  sl.registerFactory<HomeProvider>(
    () => HomeProvider(module1repository: sl()),
  );
  // Repositories
  sl.registerLazySingleton<Module1Repository>(
    () => Module1Repository(localStorage: sl(), networkUtils: sl()),
  );
}
