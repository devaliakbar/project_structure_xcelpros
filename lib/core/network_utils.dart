class NetworkUtils {
  Future<Map<String, dynamic>> getNetworkResponse() async {
    await Future.delayed(const Duration(milliseconds: 1000));

    return {"name": "NETWORK DATA LOADED"};
  }
}
