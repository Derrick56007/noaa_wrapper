import 'dart:html';

import 'base.dart';

class NOAAClient extends NOAAv2 {
  NOAAClient(String token) : super(token);

  @override
  Future<String?> get() async {
    final url = '${NOAAv2.baseUrl}$endPoint${params.values.join("&")}';

    print(url);

    final response = await HttpRequest.request(url, requestHeaders: {
      'token': token,
    });

    return response.responseText;
  }
}
