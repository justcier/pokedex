import 'package:http/http.dart' as http;

extension ResponseExtensions on http.Response {
  bool get isSuccessful => statusCode == 200;
}
