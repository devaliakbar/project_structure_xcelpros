import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:project_structure_xcelpros/core/local_storage.dart';
import 'package:project_structure_xcelpros/core/network_utils.dart';

class MockLocalStorage extends Mock implements LocalStorage {}

class MockNetworkUtils extends Mock implements NetworkUtils {}

void main() {
  final MockLocalStorage mockLocalStorage = MockLocalStorage();
  final MockNetworkUtils mockNetworkUtils = MockNetworkUtils();

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
