import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:project_structure_xcelpros/core/local_storage.dart';
import 'package:project_structure_xcelpros/core/network_utils.dart';
import 'package:project_structure_xcelpros/modules/module1/repositories/module1_repository.dart';

class MockLocalStorage extends Mock implements LocalStorage {}

class MockNetworkUtils extends Mock implements NetworkUtils {}

void main() {
  final MockLocalStorage mockLocalStorage = MockLocalStorage();
  final MockNetworkUtils mockNetworkUtils = MockNetworkUtils();

  final Module1Repository module1repository = Module1Repository(
      localStorage: mockLocalStorage, networkUtils: mockNetworkUtils);

  final Map<String, dynamic> testLocalResponse = {"name": "LOCAL DATA LOADED"};

  final Map<String, dynamic> testNetworkResponse = {
    "name": "NETWORK DATA LOADED"
  };

  when(mockLocalStorage.getLocal()).thenAnswer((_) async => testLocalResponse);

  when(mockNetworkUtils.getNetworkResponse())
      .thenAnswer((_) async => testNetworkResponse);

  group("Test", () {
    //DO ALL TEST
  });
}
