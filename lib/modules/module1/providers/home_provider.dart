import 'package:either_dart/either.dart';
import 'package:flutter/material.dart';
import 'package:project_structure_xcelpros/modules/module1/models/data_model.dart';
import 'package:project_structure_xcelpros/modules/module1/repositories/module1_repository.dart';

class HomeProvider extends ChangeNotifier {
  final Module1Repository _module1repository;

  DataModel? dataModel = DataModel(name: "Initial State");

  String? errorMessage;

  HomeProvider({required Module1Repository module1repository})
      : _module1repository = module1repository;

  Future<void> getNetworkData() async {
    dataModel = null;
    notifyListeners();

    final Either<String, DataModel> result =
        await _module1repository.getNetworkData();

    result.fold((left) {
      errorMessage = left;
      notifyListeners();
    }, (right) {
      dataModel = right;
      notifyListeners();
    });
  }

  Future<void> getLocalData() async {
    dataModel = null;
    notifyListeners();

    final Either<String, DataModel> result =
        await _module1repository.getLocalData();

    result.fold((left) {
      errorMessage = left;
      notifyListeners();
    }, (right) {
      dataModel = right;
      notifyListeners();
    });
  }
}
