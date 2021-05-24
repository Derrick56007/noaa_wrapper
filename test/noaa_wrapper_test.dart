import 'package:noaa_wrapper/server_v1.dart';
import 'package:test/test.dart';

void main() {
  group('A group of tests', () {
    late NOAAServer noaa;

    setUp(() {
      noaa = NOAAServer();
    });

    test('First Test', () async {
      noaa
        ..date('today')
        ..station('8454000')
        ..product('water_temperature')
        ..units('english')
        ..timeZone('gmt')
        ..format('csv');

      print(await noaa.get());
    });
  });
}
