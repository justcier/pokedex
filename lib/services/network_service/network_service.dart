import 'package:http/http.dart' as http;

abstract class NetworkService {
  Future<http.Response> get(String url);
}
