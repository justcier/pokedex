import 'package:injectable/injectable.dart';
import 'package:pokedex_rest/core/data/endpoints.dart';
import 'package:pokedex_rest/services/network_service/network_service.dart';
import 'package:http/http.dart' as http;

@Injectable(as: NetworkService)
class NetworkServiceImpl implements NetworkService {
  final http.Client client;

  NetworkServiceImpl({required this.client});

  @override
  Future<http.Response> get(String endpoint) {
    return client.get(
      Uri.parse('${Endpoints.apiUrl}/$endpoint'),
      headers: {'Content-Type': 'application/json'},
    );
  }
}
