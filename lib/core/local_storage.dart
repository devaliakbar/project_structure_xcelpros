class LocalStorage {
  Future<Map<String, dynamic>> getLocal() async {
    await Future.delayed(const Duration(milliseconds: 1000));

    return {"name": "LOCAL DATA LOADED"};
  }
}
