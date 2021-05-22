import 'dart:convert';
import 'dart:io';

import 'base.dart';

class NOAAServer extends NOAAv1 {
  final HttpClient _client;

  NOAAServer({HttpClient httpClient}) : _client = httpClient ?? HttpClient();

  @override
  Future<String> get() async {
    final url = '${NOAAv1.baseUrl}${params.values.join("&")}';

    print(url);

    final response = await _client.getUrl(Uri.parse(url)).then((request) {
      return request.close();
    });

    return await response.transform(Utf8Decoder()).first;
  }
}
