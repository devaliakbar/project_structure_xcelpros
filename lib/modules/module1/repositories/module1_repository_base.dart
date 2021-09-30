part of 'module1_repository.dart';

abstract class _Module1RepositoryBase {
  late final NetworkUtils _networkUtils;
  late final LocalStorage _localStorage;

  _Module1RepositoryBase(
      {required LocalStorage localStorage, required NetworkUtils networkUtils})
      : _localStorage = localStorage,
        _networkUtils = networkUtils;
}
