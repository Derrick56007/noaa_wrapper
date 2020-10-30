import 'dart:html';

import 'noaa_wrapper_base.dart';

class NOAAClient extends NOAA {
  @override
  Future<String> get() async {
    final url = '${NOAA.baseUrl}${params.values.join("&")}';

    print(url);

    final response = await HttpRequest.request(url);

    return response.responseText;
  }
}
