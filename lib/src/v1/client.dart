import 'dart:html';

import 'base.dart';

class NOAAClient extends NOAAv1 {
  @override
  Future<String?> get() async {
    final url = '${NOAAv1.baseUrl}${params.values.join("&")}';

    print(url);

    final response = await HttpRequest.request(url);

    return response.responseText;
  }
}
