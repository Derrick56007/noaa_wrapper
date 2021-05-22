import 'dart:convert';
import 'dart:io';

import 'base.dart';

class NOAAServer extends NOAAv2 {
  final HttpClient _client;

  NOAAServer(String token, {HttpClient httpClient}) : _client = httpClient ?? HttpClient(), super(token);

  @override
  Future<String> get() async {
    final url = '${NOAAv2.baseUrl}$endPoint${params.values.join("&")}';

    print(url);

    final response = await _client.getUrl(Uri.parse(url)).then((request) {
      request.headers.add('token', token);
      return request.close();
    });

    return await response.transform(Utf8Decoder()).first;
  }
}
