import 'dart:convert';
import 'dart:io';

import 'noaa_wrapper_base.dart';

class NOAAServer extends NOAA {
  final HttpClient _client;

  NOAAServer({HttpClient httpClient}) : _client = httpClient ?? HttpClient();

  @override
  Future<String> get() async {
    final url = '${NOAA.baseUrl}${params.values.join("&")}';

    print(url);

    final response =
        await _client.getUrl(Uri.parse(url)).then((request) => request.close());

    return await response.transform(Utf8Decoder()).first;
  }
}
