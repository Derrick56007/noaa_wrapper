abstract class NOAAv2 {
  static const baseUrl = 'https://www.ncdc.noaa.gov/cdo-web/api/v2';

  final params = {};

  String id = '';
  String endPoint = '';
  final String token;

  NOAAv2(this.token);

  void clearParams() {
    params.clear();
  }

  void setId(String i) {
    id = i;
  }

  void setEndPoint(String e) {
    const validEndPoints = {
      '/datasets',
      '/datacategories',
      '/datatypes',
      'locationcategories',
      '/locations',
      '/stations',
      '/data',
    };

    assert(validEndPoints.contains(e));

    endPoint = e;
  }

  Future<String> get();
}
